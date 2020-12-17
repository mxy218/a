.class Lcom/meizu/settings/applications/ManageApplications$3;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications;)V
    .registers 2

    .line 2149
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$3;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 2152
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$3;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/applications/ManageApplications;->access$2502(Lcom/meizu/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    const/4 p1, 0x0

    .line 2153
    :goto_a
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$3;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p2}, Lcom/meizu/settings/applications/ManageApplications;->access$300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2e

    .line 2154
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$3;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p2}, Lcom/meizu/settings/applications/ManageApplications;->access$300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$3;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$2500(Lcom/meizu/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->setContainerService(Lcom/android/internal/app/IMediaContainerService;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_2e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 2160
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$3;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/ManageApplications;->access$2502(Lcom/meizu/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    return-void
.end method
