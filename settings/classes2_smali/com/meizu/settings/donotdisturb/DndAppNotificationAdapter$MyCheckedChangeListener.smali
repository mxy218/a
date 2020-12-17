.class Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;
.super Ljava/lang/Object;
.source "DndAppNotificationAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCheckedChangeListener"
.end annotation


# instance fields
.field private mInfo:Lcom/meizu/settings/donotdisturb/DndAppInfo;

.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;Lcom/meizu/settings/donotdisturb/DndAppInfo;)V
    .registers 3

    .line 39
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/donotdisturb/DndAppInfo;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 45
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->access$000(Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;)Lcom/meizu/settings/donotdisturb/DndAppListState;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/donotdisturb/DndAppInfo;

    invoke-virtual {v0}, Lcom/meizu/settings/donotdisturb/DndAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/donotdisturb/DndAppInfo;

    .line 46
    invoke-virtual {v1}, Lcom/meizu/settings/donotdisturb/DndAppInfo;->getUid()I

    move-result v1

    .line 45
    invoke-virtual {p1, p2, v0, v1}, Lcom/meizu/settings/donotdisturb/DndAppListState;->setAppNotificationEnabled(ZLjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;->mInfo:Lcom/meizu/settings/donotdisturb/DndAppInfo;

    invoke-virtual {p0, p2}, Lcom/meizu/settings/donotdisturb/DndAppInfo;->setEnabled(Z)V

    :cond_1d
    return-void
.end method
