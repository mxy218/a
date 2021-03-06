.class public Lcom/android/server/location/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field public static final MSG_DISABLE_NANO_APP:I = 0x2

.field public static final MSG_ENABLE_NANO_APP:I = 0x1

.field public static final MSG_HUB_RESET:I = 0x7

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_QUERY_MEMORY:I = 0x6

.field public static final MSG_QUERY_NANO_APPS:I = 0x5

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientManager:Lcom/android/server/location/ContextHubClientManager;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubIdToInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextHubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mDefaultClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/IContextHubClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

.field private final mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;

    .line 144
    const-string v0, "ContextHubService"

    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 90
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 106
    new-instance v1, Lcom/android/server/location/NanoAppStateManager;

    invoke-direct {v1}, Lcom/android/server/location/NanoAppStateManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 145
    iput-object p1, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    .line 147
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->getContextHubProxy()Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 148
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    if-nez v1, :cond_37

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    .line 150
    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 154
    return-void

    .line 157
    :cond_37
    new-instance v2, Lcom/android/server/location/ContextHubClientManager;

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/server/location/ContextHubClientManager;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;)V

    iput-object v2, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 158
    new-instance v1, Lcom/android/server/location/ContextHubTransactionManager;

    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/location/ContextHubTransactionManager;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Lcom/android/server/location/NanoAppStateManager;)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    .line 163
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v1}, Landroid/hardware/contexthub/V1_0/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_53} :catch_54

    .line 167
    .local v1, "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    goto :goto_5e

    .line 164
    .end local v1  # "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    :catch_54
    move-exception v1

    .line 165
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException while getting Context Hub info"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "hubList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    :goto_5e
    nop

    .line 169
    invoke-static {v1}, Lcom/android/server/location/ContextHubServiceUtil;->createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    .line 168
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    .line 172
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v2, "defaultClientMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/location/IContextHubClient;>;"
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_85
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 174
    .local v4, "contextHubId":I
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/ContextHubInfo;

    .line 175
    .local v5, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 176
    invoke-direct {p0, v4}, Lcom/android/server/location/ContextHubService;->createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v7

    .line 175
    invoke-virtual {v6, v5, v7}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;

    move-result-object v6

    .line 177
    .local v6, "client":Landroid/hardware/location/IContextHubClient;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :try_start_b2
    iget-object v7, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    new-instance v8, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;

    invoke-direct {v8, p0, v4}, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;-><init>(Lcom/android/server/location/ContextHubService;I)V

    invoke-interface {v7, v4, v8}, Landroid/hardware/contexthub/V1_0/IContexthub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_bc} :catch_bd

    .line 185
    goto :goto_d7

    .line 182
    :catch_bd
    move-exception v7

    .line 183
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException while registering service callback for hub (ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v7  # "e":Landroid/os/RemoteException;
    :goto_d7
    invoke-direct {p0, v4}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    .line 190
    .end local v4  # "contextHubId":I
    .end local v5  # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    .end local v6  # "client":Landroid/hardware/location/IContextHubClient;
    goto :goto_85

    .line 191
    :cond_db
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ContextHubService;ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleClientMessageCallback(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/ContextHubService;III)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->handleTransactionResultCallback(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/ContextHubService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleHubEventCallback(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/ContextHubService;IJI)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"  # I
    .param p2, "x2"  # J
    .param p4, "x3"  # I

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubService;->handleAppAbortCallback(IJI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/ContextHubService;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/util/List;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleQueryAppsCallback(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/ContextHubService;)Lcom/android/server/location/NanoAppStateManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;

    .line 63
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/ContextHubService;III[B)I
    .registers 6
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # [B

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/location/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Landroid/hardware/location/NanoAppBinary;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/ContextHubService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/ContextHubService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ContextHubService;->handleUnloadResponseOldApi(II)V

    return-void
.end method

.method private checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z
    .registers 9
    .param p1, "contextHubId"  # I
    .param p2, "callback"  # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "transactionType"  # I

    .line 852
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const-string v1, "RemoteException while calling onTransactionComplete"

    const/4 v2, 0x0

    const-string v3, "ContextHubService"

    if-nez v0, :cond_14

    .line 854
    const/16 v0, 0x8

    :try_start_b
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 858
    goto :goto_13

    .line 856
    :catch_f
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_13
    return v2

    .line 861
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-static {p3, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " transaction for invalid hub ID "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, 0x2

    :try_start_3b
    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 869
    goto :goto_43

    .line 867
    :catch_3f
    move-exception v0

    .line 868
    .restart local v0  # "e":Landroid/os/RemoteException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_43
    return v2

    .line 873
    :cond_44
    const/4 v0, 0x1

    return v0
.end method

.method private checkPermissions()V
    .registers 2

    .line 802
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 803
    return-void
.end method

.method private createDefaultClientCallback(I)Landroid/hardware/location/IContextHubClientCallback;
    .registers 3
    .param p1, "contextHubId"  # I

    .line 201
    new-instance v0, Lcom/android/server/location/ContextHubService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$1;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 4
    .param p1, "contextHubId"  # I
    .param p2, "nanoAppBinary"  # Landroid/hardware/location/NanoAppBinary;

    .line 303
    new-instance v0, Lcom/android/server/location/ContextHubService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/ContextHubService$2;-><init>(Lcom/android/server/location/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V

    return-object v0
.end method

.method private createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3
    .param p1, "contextHubId"  # I

    .line 341
    new-instance v0, Lcom/android/server/location/ContextHubService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$4;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
    .registers 3
    .param p1, "contextHubId"  # I

    .line 322
    new-instance v0, Lcom/android/server/location/ContextHubService$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/ContextHubService$3;-><init>(Lcom/android/server/location/ContextHubService;I)V

    return-object v0
.end method

.method private getContextHubProxy()Landroid/hardware/contexthub/V1_0/IContexthub;
    .registers 5

    .line 244
    const-string v0, "ContextHubService"

    const/4 v1, 0x0

    .line 246
    .local v1, "proxy":Landroid/hardware/contexthub/V1_0/IContexthub;
    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_11
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v1, v0

    .line 251
    :goto_9
    goto :goto_18

    .line 249
    :catch_a
    move-exception v2

    .line 250
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 247
    .end local v2  # "e":Ljava/util/NoSuchElementException;
    :catch_11
    move-exception v2

    .line 248
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2  # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 253
    :goto_18
    return-object v1
.end method

.method private handleAppAbortCallback(IJI)V
    .registers 6
    .param p1, "contextHubId"  # I
    .param p2, "nanoAppId"  # J
    .param p4, "abortCode"  # I

    .line 583
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/ContextHubClientManager;->onNanoAppAborted(IJI)V

    .line 584
    return-void
.end method

.method private handleClientMessageCallback(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .registers 4
    .param p1, "contextHubId"  # I
    .param p2, "message"  # Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    .line 511
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubClientManager;->onMessageFromNanoApp(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    .line 512
    return-void
.end method

.method private handleHubEventCallback(II)V
    .registers 5
    .param p1, "contextHubId"  # I
    .param p2, "eventType"  # I

    .line 564
    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    .line 565
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubTransactionManager;->onHubReset()V

    .line 566
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    .line 568
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/ContextHubClientManager;->onHubReset(I)V

    goto :goto_34

    .line 570
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown hub event (hub ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_34
    return-void
.end method

.method private handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V
    .registers 8
    .param p1, "contextHubId"  # I
    .param p2, "result"  # I
    .param p3, "nanoAppBinary"  # Landroid/hardware/location/NanoAppBinary;

    .line 521
    if-nez p3, :cond_a

    .line 522
    const-string v0, "ContextHubService"

    const-string v1, "Nanoapp binary field was null for a load transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 526
    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 527
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 528
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 529
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    .line 528
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v1

    .line 530
    .local v1, "nanoAppHandle":I
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 532
    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {p0, v2, p1, v3, v0}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 533
    return-void
.end method

.method private handleQueryAppsCallback(ILjava/util/List;)V
    .registers 5
    .param p1, "contextHubId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 593
    .local p2, "nanoAppInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    nop

    .line 594
    invoke-static {p2}, Lcom/android/server/location/ContextHubServiceUtil;->createNanoAppStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 596
    .local v0, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/NanoAppStateManager;->updateCache(ILjava/util/List;)V

    .line 597
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->onQueryResponse(Ljava/util/List;)V

    .line 598
    return-void
.end method

.method private handleTransactionResultCallback(III)V
    .registers 5
    .param p1, "contextHubId"  # I
    .param p2, "transactionId"  # I
    .param p3, "result"  # I

    .line 554
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/location/ContextHubTransactionManager;->onTransactionResponse(II)V

    .line 555
    return-void
.end method

.method private handleUnloadResponseOldApi(II)V
    .registers 6
    .param p1, "contextHubId"  # I
    .param p2, "result"  # I

    .line 541
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 542
    .local v0, "data":[B
    int-to-byte v1, p2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 543
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/server/location/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 544
    return-void
.end method

.method private isValidContextHubId(I)Z
    .registers 4
    .param p1, "contextHubId"  # I

    .line 605
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 2
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "info"  # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 796
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$findNanoAppOnHub$0(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;Landroid/hardware/location/NanoAppInstanceInfo;)V
    .registers 4
    .param p0, "filter"  # Landroid/hardware/location/NanoAppFilter;
    .param p1, "foundInstances"  # Ljava/util/ArrayList;
    .param p2, "info"  # Landroid/hardware/location/NanoAppInstanceInfo;

    .line 421
    invoke-virtual {p0, p2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 422
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_11
    return-void
.end method

.method private onMessageReceiptOldApi(III[B)I
    .registers 14
    .param p1, "msgType"  # I
    .param p2, "contextHubHandle"  # I
    .param p3, "appInstance"  # I
    .param p4, "data"  # [B

    .line 807
    if-nez p4, :cond_4

    .line 808
    const/4 v0, -0x1

    return v0

    .line 811
    :cond_4
    const/4 v0, 0x0

    .line 812
    .local v0, "msgVersion":I
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 819
    .local v1, "callbacksCount":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_10

    .line 823
    return v2

    .line 826
    :cond_10
    new-instance v3, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v3, p1, v0, p4}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    .line 827
    .local v3, "msg":Landroid/hardware/location/ContextHubMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v1, :cond_4c

    .line 828
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/IContextHubCallback;

    .line 830
    .local v5, "callback":Landroid/hardware/location/IContextHubCallback;
    :try_start_20
    invoke-interface {v5, p2, p3, v3}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 834
    goto :goto_49

    .line 831
    :catch_24
    move-exception v6

    .line 832
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") calling remote callback ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContextHubService"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    nop

    .line 827
    .end local v5  # "callback":Landroid/hardware/location/IContextHubCallback;
    .end local v6  # "e":Landroid/os/RemoteException;
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 836
    .end local v4  # "i":I
    :cond_4c
    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 837
    return v2
.end method

.method private queryNanoAppsInternal(I)I
    .registers 5
    .param p1, "contextHubId"  # I

    .line 446
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    if-nez v0, :cond_6

    .line 447
    const/4 v0, 0x1

    return v0

    .line 450
    :cond_6
    nop

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->createQueryTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    .line 452
    .local v0, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v1

    .line 455
    .local v1, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v2, v1}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 456
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public createClient(ILandroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;
    .registers 6
    .param p1, "contextHubId"  # I
    .param p2, "clientCallback"  # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 623
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 626
    if-eqz p2, :cond_1e

    .line 630
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 631
    .local v0, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 627
    .end local v0  # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot register client with null callback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context hub ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPendingIntentClient(ILandroid/app/PendingIntent;J)Landroid/hardware/location/IContextHubClient;
    .registers 8
    .param p1, "contextHubId"  # I
    .param p2, "pendingIntent"  # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 649
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 653
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    .line 654
    .local v0, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/server/location/ContextHubClientManager;->registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/IContextHubClient;

    move-result-object v1

    return-object v1

    .line 650
    .end local v0  # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid context hub ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 7
    .param p1, "contextHubId"  # I
    .param p2, "transactionCallback"  # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 749
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 751
    return-void

    .line 754
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createDisableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 756
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 757
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "ContextHubService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 785
    :cond_b
    const-string v0, "Dumping ContextHub Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    const-string v1, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 791
    .local v2, "hubInfo":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 792
    .end local v2  # "hubInfo":Landroid/hardware/location/ContextHubInfo;
    goto :goto_24

    .line 793
    :cond_34
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    const-string v0, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    new-instance v1, Lcom/android/server/location/-$$Lambda$ContextHubService$HPGvKluemttyVfAcSog-eXiJyHE;

    invoke-direct {v1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubService$HPGvKluemttyVfAcSog-eXiJyHE;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 799
    return-void
.end method

.method public enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 7
    .param p1, "contextHubId"  # I
    .param p2, "transactionCallback"  # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 724
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 725
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 727
    return-void

    .line 730
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createEnableTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 732
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 733
    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .registers 7
    .param p1, "contextHubHandle"  # I
    .param p2, "filter"  # Landroid/hardware/location/NanoAppFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v0, "foundInstances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_14

    .line 420
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    new-instance v2, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;

    invoke-direct {v2, p2, v0}, Lcom/android/server/location/-$$Lambda$ContextHubService$yrt4Ybb62ufyqsQQMJoTJ2JMw_4;-><init>(Landroid/hardware/location/NanoAppFilter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/NanoAppStateManager;->foreachNanoAppInstanceInfo(Ljava/util/function/Consumer;)V

    .line 427
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 428
    .local v1, "retArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 429
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 431
    .end local v2  # "i":I
    :cond_30
    return-object v1
.end method

.method public getContextHubHandles()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 269
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->createPrimitiveIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .registers 4
    .param p1, "contextHubHandle"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 275
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Context Hub handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in getContextHubInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_2c
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubIdToInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public getContextHubs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 291
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 3
    .param p1, "nanoAppHandle"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 410
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    return-object v0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .registers 7
    .param p1, "contextHubHandle"  # I
    .param p2, "nanoApp"  # Landroid/hardware/location/NanoApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 357
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 358
    return v1

    .line 360
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v0

    const-string v2, "ContextHubService"

    if-nez v0, :cond_2b

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Hub handle "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in loadNanoApp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v1

    .line 364
    :cond_2b
    if-nez p2, :cond_33

    .line 365
    const-string v0, "NanoApp cannot be null in loadNanoApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v1

    .line 370
    :cond_33
    new-instance v0, Landroid/hardware/location/NanoAppBinary;

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/location/NanoAppBinary;-><init>([B)V

    .line 371
    .local v0, "nanoAppBinary":Landroid/hardware/location/NanoAppBinary;
    nop

    .line 372
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 374
    .local v1, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v2

    .line 377
    .local v2, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 378
    const/4 v3, 0x0

    return v3
.end method

.method public loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    .registers 6
    .param p1, "contextHubId"  # I
    .param p2, "transactionCallback"  # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppBinary"  # Landroid/hardware/location/NanoAppBinary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 673
    return-void

    .line 675
    :cond_b
    if-nez p3, :cond_19

    .line 676
    const-string v0, "ContextHubService"

    const-string v1, "NanoAppBinary cannot be null in loadNanoAppOnHub"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 679
    return-void

    .line 682
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createLoadTransaction(ILandroid/hardware/location/NanoAppBinary;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 684
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 685
    return-void
.end method

.method public queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .registers 5
    .param p1, "contextHubId"  # I
    .param p2, "transactionCallback"  # Landroid/hardware/location/IContextHubTransactionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 771
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 773
    return-void

    .line 776
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 778
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 779
    return-void
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .registers 4
    .param p1, "callback"  # Landroid/hardware/location/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 259
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added callback, total callbacks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 262
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .registers 13
    .param p1, "contextHubHandle"  # I
    .param p2, "nanoAppHandle"  # I
    .param p3, "msg"  # Landroid/hardware/location/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 463
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 464
    return v1

    .line 466
    :cond_9
    const-string v0, "ContextHubService"

    if-nez p3, :cond_13

    .line 467
    const-string v2, "ContextHubMessage cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return v1

    .line 470
    :cond_13
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v2

    if-nez v2, :cond_1f

    .line 471
    const-string v2, "ContextHubMessage message body cannot be null in sendMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return v1

    .line 474
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->isValidContextHubId(I)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Context Hub handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in sendMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return v1

    .line 479
    :cond_3f
    const/4 v2, 0x0

    .line 480
    .local v2, "success":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v1, :cond_6e

    .line 481
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_55

    .line 482
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubService;->queryNanoAppsInternal(I)I

    move-result v0

    if-nez v0, :cond_52

    goto :goto_53

    :cond_52
    move v3, v4

    :goto_53
    move v2, v3

    goto :goto_b4

    .line 484
    :cond_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid OS message params of type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 487
    :cond_6e
    invoke-virtual {p0, p2}, Lcom/android/server/location/ContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v5

    .line 488
    .local v5, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-eqz v5, :cond_9b

    .line 489
    nop

    .line 490
    invoke-virtual {v5}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v0

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v8

    .line 489
    invoke-static {v6, v7, v0, v8}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    .line 492
    .local v0, "message":Landroid/hardware/location/NanoAppMessage;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/location/IContextHubClient;

    .line 493
    .local v6, "client":Landroid/hardware/location/IContextHubClient;
    invoke-interface {v6, v0}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v7

    if-nez v7, :cond_98

    goto :goto_99

    :cond_98
    move v3, v4

    :goto_99
    move v2, v3

    .line 495
    .end local v0  # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v6  # "client":Landroid/hardware/location/IContextHubClient;
    goto :goto_b4

    .line 496
    :cond_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send nanoapp message - nanoapp with handle "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not exist."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v5  # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    :goto_b4
    if-eqz v2, :cond_b7

    move v1, v4

    :cond_b7
    return v1
.end method

.method public unloadNanoApp(I)I
    .registers 9
    .param p1, "nanoAppHandle"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 384
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 385
    return v1

    .line 388
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/NanoAppStateManager;

    .line 389
    invoke-virtual {v0, p1}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0

    .line 390
    .local v0, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-nez v0, :cond_2d

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid nanoapp handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in unloadNanoApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextHubService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v1

    .line 395
    :cond_2d
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v1

    .line 396
    .local v1, "contextHubId":I
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    .line 397
    .local v2, "nanoAppId":J
    nop

    .line 398
    invoke-direct {p0, v1}, Lcom/android/server/location/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v4

    .line 399
    .local v4, "onCompleteCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/server/location/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v5

    .line 402
    .local v5, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v6, v5}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 403
    const/4 v6, 0x0

    return v6
.end method

.method public unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    .registers 7
    .param p1, "contextHubId"  # I
    .param p2, "transactionCallback"  # Landroid/hardware/location/IContextHubTransactionCallback;
    .param p3, "nanoAppId"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 701
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/ContextHubService;->checkHalProxyAndContextHubId(ILandroid/hardware/location/IContextHubTransactionCallback;I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 703
    return-void

    .line 706
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/android/server/location/ContextHubTransactionManager;->createUnloadTransaction(IJLandroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/ContextHubServiceTransaction;

    move-result-object v0

    .line 708
    .local v0, "transaction":Lcom/android/server/location/ContextHubServiceTransaction;
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mTransactionManager:Lcom/android/server/location/ContextHubTransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/location/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/ContextHubServiceTransaction;)V

    .line 709
    return-void
.end method
