.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;
.super Ljava/lang/Object;
.source "MzDonotDisturbScheduleList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->onBindViewHolder(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$rule:Landroid/app/AutomaticZenRule;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;ILandroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .registers 5

    .line 425
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    iput p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->val$rule:Landroid/app/AutomaticZenRule;

    iput-object p4, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindViewHolder onCheckedChanged position = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MzDonotDisturbScheduleList"

    invoke-static {v1, v0, p1}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->val$rule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result p1

    if-ne p1, p2, :cond_22

    return-void

    .line 432
    :cond_22
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->val$rule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 433
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->this$1:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;

    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$300(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->val$id:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$ScheduleListAdapter$1;->val$rule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result p0

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBindViewHolder onCheckedChanged update rule ret  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
