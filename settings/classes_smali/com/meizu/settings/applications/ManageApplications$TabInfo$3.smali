.class Lcom/meizu/settings/applications/ManageApplications$TabInfo$3;
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

    .line 288
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$3;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$3;->this$0:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->handleRunningProcessesAvail()V

    return-void
.end method
