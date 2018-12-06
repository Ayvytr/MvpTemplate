package ${packageName}.presenter;

import android.support.annotation.NonNull;

import com.ayvytr.mvp.BasePresenter;
import ${packageName}.contract.${className}Contract;

public class ${className}Presenter extends BasePresenter<${className}Contract.Model, ${className}Contract.View> {
    public ${className}Presenter() {
    }

    public ${className}Presenter(@NonNull ${className}Contract.Model model, @NonNull ${className}Contract.View view) {
        super(model, view);
    }

    public ${className}Presenter(@NonNull ${className}Contract.View view) {
        super(view);
    }
}
