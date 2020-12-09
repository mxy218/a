.class final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .line 800
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V
    .registers 3

    .line 800
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method


# virtual methods
.method public destroySession()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 805
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService;->destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    .line 807
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 808
    nop

    .line 809
    return-void

    .line 807
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getController()Landroid/media/session/ISessionController;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1000(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    .line 814
    if-nez p2, :cond_a

    const/4 p2, 0x0

    goto :goto_10

    :cond_a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p2, v1

    .line 813
    :goto_10
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 815
    return-void
.end method

.method public setActive(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1102(Lcom/android/server/media/MediaSessionRecord;Z)Z

    .line 825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 827
    :try_start_9
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaSessionService;->updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_23

    .line 829
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    nop

    .line 831
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 832
    return-void

    .line 829
    :catchall_23
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setCurrentVolume(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$602(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 936
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 937
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 923
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_13

    :cond_d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v2

    :goto_13
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2202(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 924
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_22

    .line 925
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 926
    return-void

    .line 924
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public setFlags(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_16

    .line 837
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 838
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 839
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/media/MediaSessionService;->enforcePhoneStatePermission(II)V

    .line 841
    :cond_16
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->access$1202(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 842
    if-eqz v0, :cond_36

    .line 843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 845
    :try_start_22
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaSessionService;->setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_31

    .line 847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    goto :goto_36

    .line 847
    :catchall_31
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 850
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 851
    return-void
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 867
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1302(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 858
    :try_start_9
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_19

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    nop

    .line 862
    return-void

    .line 860
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 873
    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_14

    .line 874
    :cond_b
    :try_start_b
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 878
    :goto_14
    if-eqz p1, :cond_19

    .line 879
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->size()I

    .line 881
    :cond_19
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1602(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 882
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->access$1702(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 883
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1, p4}, Lcom/android/server/media/MediaSessionRecord;->access$1802(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)Ljava/lang/String;

    .line 884
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_34

    .line 885
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 886
    return-void

    .line 884
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 891
    move v0, v1

    goto :goto_15

    :cond_b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 892
    :goto_15
    if-nez p1, :cond_18

    .line 893
    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    .line 894
    :goto_1c
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 895
    :try_start_23
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1902(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    .line 896
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_4c

    .line 897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 899
    :try_start_2d
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_47

    .line 901
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    nop

    .line 903
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 904
    return-void

    .line 901
    :catchall_47
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 896
    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 943
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 944
    :goto_14
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionRecord;->access$2402(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 945
    if-eqz p1, :cond_21

    .line 946
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2502(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    goto :goto_28

    .line 948
    :cond_21
    const-string p1, "MediaSessionRecord"

    const-string v2, "Received null audio attributes, using existing attributes"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_50

    .line 951
    if-eqz v1, :cond_4f

    .line 952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 954
    :try_start_2f
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_4a

    .line 956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    nop

    .line 958
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    goto :goto_4f

    .line 956
    :catchall_4a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 960
    :cond_4f
    :goto_4f
    return-void

    .line 950
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public setPlaybackToRemote(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 966
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 967
    :goto_12
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->access$2402(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 968
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2602(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 969
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1, p2}, Lcom/android/server/media/MediaSessionRecord;->access$2702(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 970
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_4a

    .line 971
    if-eqz v2, :cond_49

    .line 972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 974
    :try_start_29
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_44

    .line 976
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    nop

    .line 978
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    goto :goto_49

    .line 976
    :catchall_44
    move-exception v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 980
    :cond_49
    :goto_49
    return-void

    .line 970
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public setQueue(Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 909
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    :goto_11
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2002(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)Ljava/util/List;

    .line 910
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_20

    .line 911
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 912
    return-void

    .line 910
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2102(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 917
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 918
    return-void
.end method

.method public setRatingType(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2302(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 931
    return-void
.end method
