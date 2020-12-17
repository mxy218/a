.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$4;
.super Ljava/lang/Object;
.source "MzDonotDisturbScheduleList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$4;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 272
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$4;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$200(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$4;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$300(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showDeleteDialog onClick removeAutomaticZenRule id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ret = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MzDonotDisturbScheduleList"

    invoke-static {v0, v1, p2}, Lcom/meizu/settings/utils/LogUtils;->d(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_a

    .line 277
    :cond_40
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$4;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$400(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->finishMultiChoice()V

    .line 278
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$4;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->access$500(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;)V

    return-void
.end method
