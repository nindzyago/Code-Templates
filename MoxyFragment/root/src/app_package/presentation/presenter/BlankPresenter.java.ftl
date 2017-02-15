package ${packageName}.presenters${dotSubpackage};

<#if applicationPackage??>import ${applicationPackage}.R;</#if>
import ${packageName}.interfaces.views${dotSubpackage}.${viewName};
import com.arellomobile.mvp.InjectViewState;
import javax.inject.Inject;


@InjectViewState
public class ${presenterName} extends BasePresenter<${viewName}>  {

    @Inject
    public ${presenterName}() {
    
    }

}
