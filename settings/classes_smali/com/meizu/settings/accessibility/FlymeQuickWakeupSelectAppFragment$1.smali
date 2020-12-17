.class Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;
.super Ljava/lang/Object;
.source "FlymeQuickWakeupSelectAppFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-le p3, p1, :cond_191

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;

    if-eqz p2, :cond_191

    .line 67
    iget-object p4, p2, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p4}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p4

    if-eqz p4, :cond_15

    goto/16 :goto_191

    .line 70
    :cond_15
    iget-object p2, p2, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 72
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    .line 73
    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p4, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p4}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$000(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    .line 72
    invoke-static {p2, p4, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_33

    move p2, p1

    goto :goto_34

    :cond_33
    move p2, p5

    :goto_34
    if-nez p2, :cond_49

    .line 75
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    .line 76
    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p4, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    .line 77
    invoke-static {p4}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$000(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p4

    .line 75
    invoke-static {p2, p4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    :cond_49
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$100(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/util/List;

    move-result-object p2

    add-int/lit8 p3, p3, -0x2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/widget/MzAppEntry;

    .line 81
    iget-object p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/meizu/settings/widget/MzAppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$202(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    .line 85
    invoke-static {p3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$300(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p3

    .line 84
    invoke-static {p2, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string/jumbo p4, "null"

    const-string/jumbo v0, "|"

    if-eqz p3, :cond_d8

    .line 88
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$400(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "null|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_14d

    .line 91
    :cond_be
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_14d

    .line 94
    :cond_d8
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_114

    const-string p3, "\\|"

    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 96
    iget-object p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$400(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Z

    move-result p3

    if-eqz p3, :cond_f5

    .line 97
    iget-object p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    goto :goto_fd

    .line 99
    :cond_f5
    iget-object p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p5

    .line 101
    :goto_fd
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p4, p2, p5

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14d

    .line 103
    :cond_114
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$400(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Z

    move-result p1

    if-eqz p1, :cond_135

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14d

    .line 106
    :cond_135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    :goto_14d
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    .line 112
    invoke-static {p3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$300(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p3

    .line 111
    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$500(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    iget-object p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->setChoosedAppInfo(Ljava/lang/String;)V

    .line 114
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "choodinfo : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;->this$0:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->access$600(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    nop

    :cond_191
    :goto_191
    return-void
.end method
