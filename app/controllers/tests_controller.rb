class TestsController < InheritedResources::Base

  private

    def test_params
      params.require(:test).permit(:build_id, :devise_model_id, :estado)
    end
end

