class UserPref < ActiveRecord::Base
  
  belongs_to  :user

  GRAPH_ORIENTATION = ['LR', 'RL', 'TB', 'BT']
  GRAPH_SIZE_REDUCTION = ['0', '1','2','3','4','5','6']
  GRAPH_REACH = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

end
