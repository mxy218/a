.class final Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnected:Z

.field private final mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

.field private final mOnGoingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mUnbindCalled:Z

.field final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V
    .registers 3

    .line 854
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const-class p1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 848
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 849
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 855
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 856
    new-instance p1, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-direct {p1, p0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 857
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->access$2100(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 858
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
    .registers 1

    .line 841
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;
    .registers 1

    .line 841
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 1

    .line 841
    iget-boolean p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 1

    .line 841
    iget-boolean p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 1

    .line 841
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 1

    .line 841
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;
    .registers 1

    .line 841
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    return-object p0
.end method

.method private cleanLocked()V
    .registers 3

    .line 917
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 918
    return-void

    .line 921
    :cond_5
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 922
    return-void

    .line 924
    :cond_e
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 925
    return-void

    .line 927
    :cond_17
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 928
    return-void

    .line 930
    :cond_20
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->access$2200(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v0

    .line 931
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 932
    if-ne v1, p0, :cond_35

    .line 936
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :cond_35
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->access$2300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 940
    return-void
.end method

.method static synthetic lambda$removeListener$0(Landroid/os/IBinder;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)Z
    .registers 2

    .line 905
    iget-object p1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .registers 7

    .line 954
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 955
    return-void

    .line 957
    :cond_5
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    iget-object v1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->register(Landroid/os/IInterface;)Z

    .line 958
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    if-nez v0, :cond_16

    .line 959
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    return-void

    .line 963
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v3, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v4, p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 966
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2b} :catch_2c

    .line 970
    goto :goto_30

    .line 967
    :catch_2c
    move-exception p1

    .line 969
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 971
    :goto_30
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 972
    return-void
.end method

.method public onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .registers 9

    .line 865
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 866
    return-void

    .line 868
    :cond_5
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 869
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 872
    :try_start_a
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 873
    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_33

    .line 874
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 875
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v3, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v5, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v6, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v6, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 878
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 880
    :cond_33
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_39

    .line 884
    goto :goto_3d

    .line 881
    :catch_39
    move-exception p1

    .line 883
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 885
    :goto_3d
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 886
    return-void
.end method

.method public onServiceDisconnectedLocked()V
    .registers 2

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 895
    return-void
.end method

.method onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .registers 5

    .line 976
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 977
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v1, :cond_d

    .line 978
    monitor-exit v0

    return-void

    .line 980
    :cond_d
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_21

    if-eqz v1, :cond_1c

    .line 982
    :try_start_15
    iget-object p2, p2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {p2, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_21

    .line 988
    goto :goto_1c

    .line 983
    :catch_1b
    move-exception p1

    .line 990
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 991
    monitor-exit v0

    .line 992
    return-void

    .line 991
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw p1
.end method

.method public removeAllLocked()V
    .registers 4

    .line 943
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v1, "Remove the spell checker bind unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v0

    .line 945
    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1f

    .line 946
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v1, v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v1, v2}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->unregister(Landroid/os/IInterface;)Z

    .line 945
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 948
    :cond_1f
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 949
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 950
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 951
    return-void
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 4

    .line 901
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 902
    :try_start_7
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v1, p1}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->unregister(Landroid/os/IInterface;)Z

    .line 903
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 904
    new-instance v1, Lcom/android/server/textservices/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$H2umvFNjpgILSC1ZJmUoLxzCdSk;

    invoke-direct {v1, p1}, Lcom/android/server/textservices/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$H2umvFNjpgILSC1ZJmUoLxzCdSk;-><init>(Landroid/os/IBinder;)V

    .line 906
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 907
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 908
    invoke-direct {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 909
    monitor-exit v0

    .line 910
    return-void

    .line 909
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p1
.end method
