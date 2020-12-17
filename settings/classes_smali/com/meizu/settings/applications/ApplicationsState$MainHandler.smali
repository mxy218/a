.class Lcom/meizu/settings/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ApplicationsState;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/ApplicationsState;Landroid/os/Looper;)V
    .registers 3

    .line 1050
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    .line 1051
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1056
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 1057
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_114

    goto/16 :goto_112

    .line 1111
    :goto_d
    :pswitch_d  #0x9
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_112

    .line 1112
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-interface {v0, v2}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onRequestPackageIconDone(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1104
    :goto_2d
    :pswitch_2d  #0x8
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_112

    .line 1105
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onLoadEntriesCompleted()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1098
    :goto_49
    :pswitch_49  #0x7
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_112

    .line 1099
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onLauncherInfoChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :pswitch_65  #0x6
    move v0, v1

    .line 1091
    :goto_66
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_112

    .line 1092
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_82

    const/4 v3, 0x1

    goto :goto_83

    :cond_82
    move v3, v1

    :goto_83
    invoke-interface {v2, v3}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 1085
    :goto_89
    :pswitch_89  #0x5
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_112

    .line 1086
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 1078
    :goto_a5
    :pswitch_a5  #0x4
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_112

    .line 1079
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    .line 1072
    :goto_c5
    :pswitch_c5  #0x3
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_112

    .line 1073
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c5

    .line 1066
    :goto_e1
    :pswitch_e1  #0x2
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_112

    .line 1067
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    .line 1059
    :pswitch_fd  #0x1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 1060
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$MainHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_112

    .line 1061
    iget-object p0, p1, Lcom/meizu/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/meizu/settings/applications/ApplicationsState$Callbacks;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_112
    :goto_112
    return-void

    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_fd  #00000001
        :pswitch_e1  #00000002
        :pswitch_c5  #00000003
        :pswitch_a5  #00000004
        :pswitch_89  #00000005
        :pswitch_65  #00000006
        :pswitch_49  #00000007
        :pswitch_2d  #00000008
        :pswitch_d  #00000009
    .end packed-switch
.end method
