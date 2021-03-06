class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = Subject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subjects }
    end
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
    @subject = Subject.find(params[:id])
    @majors = Major.all
    @tetras = Tetramod.all
    @examples = Curriculum.where("subject_id = ?", params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subject }
    end
  end

  # GET /subjects/new
  # GET /subjects/new.json
  def new
    @subject = Subject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subject }
    end
  end

  # GET /subjects/1/edit
  def edit
    @subject = Subject.find(params[:id])
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = Subject.new(params[:subject])

    respond_to do |format|
      if @subject.save
        format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
        format.json { render json: @subject, status: :created, location: @subject }
      else
        format.html { render action: "new" }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subjects/1
  # PUT /subjects/1.json
  def update
    @subject = Subject.find(params[:id])

    respond_to do |format|
      if @subject.update_attributes(params[:subject])
        format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    respond_to do |format|
      format.html { redirect_to subjects_url }
      format.json { head :no_content }
    end
  end
   
  def addtomajor
       @subject = Subject.find(params[:subject_id])
       #logger.info(params[:subject][:id])
       @major = Major.find(params[:major][:id])
       @tetra = Tetramod.find(params[:tetra][:id])
       orden = params[:orden]
       
       @subject.curriculums.build(:major_id => @major.id, :subject_id => @subject.id, :tetramod_id => @tetra.id, :orden_kardex => orden)

     respond_to do |format|
       if @subject.save
         format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
         format.json { render json: @subject, status: :created, location: @subject }
       else
         format.html { render action: "show" }
         format.json { render json: @subject.errors, status: :unprocessable_entity }
       end
     end
   end
   
   
   def periods
     @subjects = Subject.all
     @majors = Major.all
     @periods = Period.all
     
     respond_to do |format|
       format.html # periods.html.erb
     end
   end
   
   def addtoperiod
        @period = Period.find(params[:period][:id])
        @major = Major.find(params[:major][:id])
        @subject = Subject.find(params[:subject][:id])        
        
        begin
          # do stuff
          @period.subjects << @subject
        rescue ActiveRecord::RecordNotUnique
          # handle the exception however you want to
        end
        

      respond_to do |format|
          format.html { redirect_to action: "periods" }
      end
    end

   def groups
     @subjects = Subject.all
     @tetras = Tetramod.all
     @periods = Period.all
     @groups = Group.all
     @shifts = Shift.all
     @teachers = Teacher.all
     
     
     respond_to do |format|
       format.html # periods.html.erb
     end
   end
  
  
  
   def addtogroup
        @period = Period.find(params[:period][:id])
        @subject = Subject.find(params[:subject][:id])
        @group = Group.find(params[:group][:id])
        @shift = Shift.find(params[:shift][:id])
        @teacher = Teacher.find(params[:teacher][:id])
        
        cupo = params[:cupo]
        horario = params[:horario]
        limite = params[:limite]
        sesiones = params[:sesiones]
        

        @subject.memberships.build(:period_id => @period.id, :subject_id => @subject.id,  
        :group_id => @group.id, :shift_id => @shift.id, :teacher_id => @teacher.id, :horario => horario,
        :lim_faltas => limite, :sesiones => sesiones,:cupo => cupo )

      respond_to do |format|
        if @subject.save
          format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
          format.json { render json: @subject, status: :created, location: @subject }
        else
          format.html { render action: "show" }
          format.json { render json: @subject.errors, status: :unprocessable_entity }
        end
      end
    end
    
     def preview
    # ... do something meaningful here ...
    @period = Period.joins(:memberships).where("memberships.period_id = ?",params[:period]).first
    @student = Student.find(params[:student])
    major = Major.find(@student.major_id)
    subject_ids = major.curriculums.select("subject_id").map(&:subject_id)
    subs = @period.subjects.where(:id => subject_ids)
    @memberships = Membership.joins(:subject).merge(subs)
    
    
    render :partial => 'preview', :object => @memberships, :content_type => 'text/html'
    end
    
    
    def inscripccion
      @periods = Period.all
      @students = Student.all

 

      respond_to do |format|
        format.html # periods.html.erb
      end
    end
    
       def inscribir
         subs = Array.new
         grps = Array.new
         params[:subjectchosen].each do |arr|
          uno, dos = arr.split("!x!")
          subs << uno
          grps << dos
         end
         
        @subjects = Subject.find(subs)
        @groups = Group.find(grps)
        @period = Period.find(params[:period][:id])
        @student = Student.find(params[:student][:id])
        i = 0
        @subjects.each do |sub|
          @student.enrollments.build(:student_id => @student.id, :subject_id => sub.id, :period_id => @period.id, :group_id => grps[i])
          i += 1
        end
        
         if @student.save
           render :partial => 'inscribir', :content_type => 'text/html'
         else
         end
      end
    
    
      def calificaciones
        @enrollments = Enrollment.all
    
        respond_to do |format|
          format.html # periods.html.erb
        end
      end
    
    
      def califas
        period = params[:period][:id]
        subject = params[:subject][:id]
        student = params[:student][:id]
        group = params[:group][:id]
        
        enroll = Enrollment.where("period_id = ? AND subject_id = ? AND student_id = ? AND group_id = ?", period, subject, student, group)
        

        if enroll.update_all(:c1 => params[:c1] ,:c2 => params[:c2], :c3 => params[:c3],
              :f1 => params[:f1] ,:f2 => params[:f2], :f3 => params[:f3], :promedio => params[:promedio],
                :tot_faltas => params[:tot_faltas], :estatus =>  params[:estatus], :calif_final =>  params[:calif_final])
                @enrolls = Enrollment.where("period_id = ? AND subject_id = ? AND group_id = ?", period, subject, group)
                render :partial => 'califas', :object => @enrolls, :content_type => 'text/html' 
        else
        end
      end
      
      def grades
        period = params[:period]
        subject = params[:subject]
        group = params[:group]
                
        @enrolls = Enrollment.where("period_id = ? AND subject_id = ? AND group_id = ?", period, subject, group)
        render :partial => 'califas', :object => @enrolls, :content_type => 'text/html' 
      
      end
      
  
end
