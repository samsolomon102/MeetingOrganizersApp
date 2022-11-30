class MeetingOrganizerListsController < ApplicationController
  before_action :set_meeting_organizer_list, only: %i[ show edit update destroy ]

  # GET /meeting_organizer_lists or /meeting_organizer_lists.json
  def index
    @meeting_organizer_lists = MeetingOrganizerList.all.order(employee_id: :ASC)
  end

  # GET /meeting_organizer_lists/1 or /meeting_organizer_lists/1.json
  def show
  end

  # GET /meeting_organizer_lists/new
  def new
    @meeting_organizer_list = MeetingOrganizerList.new
  end

  # GET /meeting_organizer_lists/1/edit
  def edit
  end

  def generate_list
  end
  # POST /meeting_organizer_lists or /meeting_organizer_lists.json
  def create
    @meeting_organizer_list = MeetingOrganizerList.new(meeting_organizer_list_params)

    respond_to do |format|
      if @meeting_organizer_list.save
        format.html { redirect_to meeting_organizer_list_url(@meeting_organizer_list), notice: "Meeting organizer list was successfully created." }
        format.json { render :show, status: :created, location: @meeting_organizer_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meeting_organizer_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meeting_organizer_lists/1 or /meeting_organizer_lists/1.json
  def update
    respond_to do |format|
      if @meeting_organizer_list.update(meeting_organizer_list_params)
        format.html { redirect_to meeting_organizer_list_url(@meeting_organizer_list), notice: "Meeting organizer list was successfully updated." }
        format.json { render :show, status: :ok, location: @meeting_organizer_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting_organizer_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_organizer_lists/1 or /meeting_organizer_lists/1.json
  def destroy
    @meeting_organizer_list.destroy

    respond_to do |format|
      format.html { redirect_to meeting_organizer_lists_url, notice: "Meeting organizer list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting_organizer_list
      @meeting_organizer_list = MeetingOrganizerList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meeting_organizer_list_params
      params.require(:meeting_organizer_list).permit(:employee_id, :first_name, :last_name, :email_id, :last_used)
    end
end
