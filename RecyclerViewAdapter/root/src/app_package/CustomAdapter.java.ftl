package ${packageName}.adapters;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ${packageName}.R;

<#if useButterKnife>
import butterknife.ButterKnife;
</#if>


public class ${adapterClass} extends RecyclerView.Adapter<${adapterClass}.${itemClass}> {

	private static final int LAYOUT = R.layout.${layoutName};


    @Override
    public ${itemClass} onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        View view = LayoutInflater.from(viewGroup.getContext()).inflate(LAYOUT, viewGroup, false);
        return new ${itemClass}(view);
    }

    @Override
    public void onBindViewHolder(${itemClass} holder, int position) {

    }

    @Override
    public int getItemCount() {
        return 0;
    }

    public static class ${itemClass} extends RecyclerView.ViewHolder {

        public ${itemClass}(View itemView) {
            super(itemView);
            <#if useButterKnife>
            ButterKnife.bind(this, itemView);
            </#if>
        }
    }
}
