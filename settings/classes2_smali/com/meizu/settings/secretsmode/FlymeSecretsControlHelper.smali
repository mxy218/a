.class public Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;
.super Ljava/lang/Object;
.source "FlymeSecretsControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;,
        Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;


# instance fields
.field private mCallback:Lcom/meizu/privacy/aidl/IPrivacyResultCallback$Stub;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFlymeSecretsControlCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

.field private mPendingActionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryConnectCounts:I

.field private mService:Lcom/meizu/privacy/aidl/IPrivacyController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mRetryConnectCounts:I

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mPendingActionList:Ljava/util/LinkedList;

    .line 75
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 100
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mCallback:Lcom/meizu/privacy/aidl/IPrivacyResultCallback$Stub;

    .line 150
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$3;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V

    iput-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/privacy/aidl/IPrivacyController;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Lcom/meizu/privacy/aidl/IPrivacyController;)Lcom/meizu/privacy/aidl/IPrivacyController;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->scheduleActions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mFlymeSecretsControlCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Ljava/util/LinkedList;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mPendingActionList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)I
    .registers 1

    .line 24
    iget p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mRetryConnectCounts:I

    return p0
.end method

.method static synthetic access$504(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)I
    .registers 2

    .line 24
    iget v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mRetryConnectCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mRetryConnectCounts:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->bindService()V

    return-void
.end method

.method private bindService()V
    .registers 4

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.meizu.privacy"

    const-string v2, "com.meizu.privacy.PrivacyController"

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p0, "FlymePrivateControlHelper"

    const-string v0, "bindService"

    .line 218
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;
    .registers 3

    .line 163
    sget-object v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mInstance:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    if-nez v0, :cond_17

    .line 164
    const-class v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    monitor-enter v0

    .line 165
    :try_start_7
    sget-object v1, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mInstance:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    if-nez v1, :cond_12

    .line 166
    new-instance v1, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-direct {v1, p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mInstance:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    .line 168
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 170
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mInstance:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    return-object p0
.end method

.method public static getSecretsAppList(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "private_pkg_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putSecretsAppList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2a
    if-lez v1, :cond_31

    const/4 p1, 0x1

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "private_pkg_list"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private scheduleActions(Ljava/lang/String;)V
    .registers 5

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleActions msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymePrivateControlHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mPendingActionList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p0, "scheduleActions actions empty"

    .line 224
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_24
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    if-nez p1, :cond_2c

    .line 228
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->bindService()V

    return-void

    .line 231
    :cond_2c
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mPendingActionList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;

    if-nez p1, :cond_3c

    const-string p0, "scheduleActions action null"

    .line 233
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 236
    :cond_3c
    iget v1, p1, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;->ActionType:I

    if-eqz v1, :cond_63

    const/4 p1, 0x1

    if-eq v1, p1, :cond_55

    const/4 p1, 0x2

    if-eq v1, p1, :cond_47

    goto :goto_75

    .line 254
    :cond_47
    :try_start_47
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mCallback:Lcom/meizu/privacy/aidl/IPrivacyResultCallback$Stub;

    invoke-interface {p1, p0}, Lcom/meizu/privacy/aidl/IPrivacyController;->exportPrivates(Lcom/meizu/privacy/aidl/IPrivacyResultCallback;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4e} :catch_4f

    goto :goto_75

    :catch_4f
    const-string p0, "export secrets data RemoteException"

    .line 256
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 247
    :cond_55
    :try_start_55
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mCallback:Lcom/meizu/privacy/aidl/IPrivacyResultCallback$Stub;

    invoke-interface {p1, p0}, Lcom/meizu/privacy/aidl/IPrivacyController;->clearPrivates(Lcom/meizu/privacy/aidl/IPrivacyResultCallback;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_5d

    goto :goto_75

    :catch_5d
    const-string p0, "clear secrets data RemoteException"

    .line 249
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 238
    :cond_63
    iget-object p1, p1, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;->ActionArgs:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 240
    :try_start_67
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    const/4 v2, 0x6

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mCallback:Lcom/meizu/privacy/aidl/IPrivacyResultCallback$Stub;

    invoke-interface {v1, p1, v2, p0}, Lcom/meizu/privacy/aidl/IPrivacyController;->markPrivate(Ljava/util/List;ILcom/meizu/privacy/aidl/IPrivacyResultCallback;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6f} :catch_70

    goto :goto_75

    :catch_70
    const-string p0, "initPrivateApp error"

    .line 242
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    return-void
.end method


# virtual methods
.method public clearSecrets()V
    .registers 3

    .line 205
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;)V

    const/4 v1, 0x1

    .line 206
    iput v1, v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;->ActionType:I

    .line 207
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mPendingActionList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    if-nez v0, :cond_15

    .line 209
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->bindService()V

    :cond_15
    const-string v0, "clearSecrets"

    .line 211
    invoke-direct {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->scheduleActions(Ljava/lang/String;)V

    return-void
.end method

.method public exportSecrets()V
    .registers 3

    .line 195
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;)V

    const/4 v1, 0x2

    .line 196
    iput v1, v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;->ActionType:I

    .line 197
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mPendingActionList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    if-nez v0, :cond_15

    .line 199
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->bindService()V

    :cond_15
    const-string v0, "exportSecrets"

    .line 201
    invoke-direct {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->scheduleActions(Ljava/lang/String;)V

    return-void
.end method

.method public initSecretApps(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;-><init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;)V

    const/4 v1, 0x0

    .line 185
    iput v1, v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;->ActionType:I

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$PendingAction;->ActionArgs:Ljava/lang/Object;

    .line 187
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mPendingActionList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mService:Lcom/meizu/privacy/aidl/IPrivacyController;

    if-nez p1, :cond_1c

    .line 189
    invoke-direct {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->bindService()V

    :cond_1c
    const-string p1, "initSecretApps"

    .line 191
    invoke-direct {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->scheduleActions(Ljava/lang/String;)V

    return-void
.end method

.method public setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mFlymeSecretsControlCallback:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    return-void
.end method

.method public startService()V
    .registers 4

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.meizu.privacy"

    const-string v2, "com.meizu.privacy.PrivacyController"

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
