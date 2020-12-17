.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;
.super Ljava/lang/Object;
.source "MzDonotDisturbScheduleList.java"

# interfaces
.implements Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;)V
    .registers 3

    .line 471
    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5

    const/4 p1, 0x0

    const-string v0, "MzDonotDisturbScheduleList"

    const-string v1, "onActionItemClicked"

    .line 578
    invoke-static {v0, p1, v1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 579
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f0a042c

    if-ne p2, v0, :cond_16

    .line 580
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1900(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V

    :cond_16
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "MzDonotDisturbScheduleList"

    const-string v2, "onCreateActionMode"

    .line 506
    invoke-static {v1, v0, v2}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1302(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Z)Z

    .line 509
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 510
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    new-instance v3, Lflyme/support/v7/widget/MultiChoiceView;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1800(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lflyme/support/v7/widget/MultiChoiceView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1502(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Lflyme/support/v7/widget/MultiChoiceView;)Lflyme/support/v7/widget/MultiChoiceView;

    .line 511
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v3

    invoke-virtual {v3}, Lflyme/support/v7/widget/MultiChoiceView;->getSelectAllView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/TwoStateTextView;

    invoke-static {v1, v3}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1602(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Lflyme/support/v7/widget/TwoStateTextView;)Lflyme/support/v7/widget/TwoStateTextView;

    .line 512
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v1

    new-instance v3, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$1;

    invoke-direct {v3, p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$1;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v0, v3}, Lflyme/support/v7/widget/ControlTitleBar;->setOnItemClickListener(ILandroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/TwoStateTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/TwoStateTextView;->setTotalCount(I)V

    .line 520
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback$2;-><init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;)V

    invoke-virtual {v0, v2, v1}, Lflyme/support/v7/widget/ControlTitleBar;->setOnItemClickListener(ILandroid/view/View$OnClickListener;)V

    .line 561
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 563
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1800(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f0e0005

    .line 564
    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 565
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    const p1, 0x7f0a042c

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1702(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    const/4 p1, 0x0

    const-string v0, "MzDonotDisturbScheduleList"

    const-string v1, "onDestroyActionMode"

    .line 587
    invoke-static {v0, p1, v1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1302(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;Z)Z

    .line 590
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 592
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 8

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onItemCheckedStateChanged position = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " checked = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MzDonotDisturbScheduleList"

    const/4 p4, 0x0

    invoke-static {p3, p4, p1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    .line 480
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_9a

    .line 481
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    if-eqz p5, :cond_69

    .line 482
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_69

    .line 483
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object p2

    iget-object p5, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onItemCheckedStateChanged mark delete rule = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4, p1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_9a

    :cond_69
    if-nez p5, :cond_9a

    .line 485
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object p2

    iget-object p5, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    invoke-interface {p2, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 486
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object p2

    iget-object p5, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->id:Ljava/lang/String;

    invoke-interface {p2, p5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onItemCheckedStateChanged unmark delete rule = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4, p1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 491
    :cond_9a
    :goto_9a
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemCount()I

    move-result p1

    .line 492
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120754

    new-array p5, v1, [Ljava/lang/Object;

    .line 493
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, p4

    invoke-virtual {p2, p3, p5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_ce

    .line 495
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object p2

    iget-object p3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    const p5, 0x7f120758

    invoke-virtual {p3, p5}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lflyme/support/v7/widget/ControlTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_d7

    .line 497
    :cond_ce
    iget-object p3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p3}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MultiChoiceView;

    move-result-object p3

    invoke-virtual {p3, p2}, Lflyme/support/v7/widget/ControlTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    :goto_d7
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1600(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/TwoStateTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lflyme/support/v7/widget/TwoStateTextView;->setSelectedCount(I)V

    .line 500
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ActionModeCallback;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$1700(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/view/MenuItem;

    move-result-object p0

    if-lez p1, :cond_e9

    move p4, v1

    :cond_e9
    invoke-interface {p0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    const/4 p0, 0x0

    const-string p1, "MzDonotDisturbScheduleList"

    const-string p2, "onPrepareActionMode"

    .line 572
    invoke-static {p1, p0, p2}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    return p0
.end method
