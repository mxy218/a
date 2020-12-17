.class Lcom/meizu/settings/applications/ManageApplications$TabInfo$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications$TabInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$2;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$2;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 278
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$2;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$200(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 279
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$2;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    return-void
.end method
