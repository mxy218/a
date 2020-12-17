.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "MzDonotDisturbScheduleList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 524
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object v0, v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->getItemCount()I

    move-result v0

    .line 525
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object v1, v1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemCount()I

    move-result v1

    const-string v2, "MzDonotDisturbScheduleList"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6f

    .line 527
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object v1, v1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView;->checkedAll()V

    .line 529
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_34

    .line 530
    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f120db0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 533
    :cond_34
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 534
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    .line 535
    iget-object v4, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object v4, v4, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v4}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object v4

    iget-object v1, v1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_69
    const-string p1, "setOnItemClickListener mark all delete rule"

    .line 537
    invoke-static {v2, v3, p1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_97

    .line 539
    :cond_6f
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object v0, v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->unCheckedAll()V

    .line 541
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_86

    .line 542
    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f121336

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 545
    :cond_86
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "setOnItemClickListener unmark all delete rule"

    .line 546
    invoke-static {v2, v3, p1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    move v0, v3

    .line 548
    :goto_97
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    const v1, 0x7f120754

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 550
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 548
    invoke-virtual {p1, v1, v4}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_c4

    .line 552
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object v1, v1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    const v4, 0x7f120758

    .line 553
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/ControlTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_cf

    .line 555
    :cond_c4
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object v1, v1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/ControlTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 557
    :goto_cf
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/TwoStateTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/TwoStateTextView;->setSelectedCount(I)V

    .line 558
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1700(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/view/MenuItem;

    move-result-object p0

    if-lez v0, :cond_e5

    goto :goto_e6

    :cond_e5
    move v2, v3

    :goto_e6
    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method
