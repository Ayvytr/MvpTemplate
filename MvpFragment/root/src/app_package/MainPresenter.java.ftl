package ${packageName}.presenter;

import android.support.annotation.NonNull;

import com.ayvytr.mvpbase.BasePresenter;
import ${packageName}.contract.MainContract;

public class ${presenterClass} extends BasePresenter<MainContract.Model, MainContract.View> {
    public ${presenterClass}() {
    }

    public ${presenterClass}(@NonNull MainContract.Model model, @NonNull MainContract.View view) {
        super(model, view);
    }

    public ${presenterClass}(@NonNull MainContract.View view) {
        super(view);
    }
}
