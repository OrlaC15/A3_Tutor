class Stage
  attr_reader :stage
  def initialize (start_level, end_level)
    @end_level = end_level
    @start_level = start_level
    @stage = start_level
  end

  def level_down
    if @stage>@start_level
      @stage-=1
    else
      @stage = @start_level
    end
  end
  def level_up
    if @stage<@end_level
      @stage+=1
    else
      @stage = @end_level
    end
  end
end