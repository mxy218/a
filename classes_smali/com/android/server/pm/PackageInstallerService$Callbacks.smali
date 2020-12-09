.class Lcom/android/server/pm/PackageInstallerService$Callbacks;
.super Landroid/os/Handler;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field private static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field private static final MSG_SESSION_CREATED:I = 0x1

.field private static final MSG_SESSION_FINISHED:I = 0x5

.field private static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageInstallerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1130
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1126
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1131
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .registers 3

    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionCreated(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .registers 3

    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionBadgingChanged(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V
    .registers 4

    .line 1119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionActiveChanged(IIZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V
    .registers 4

    .line 1119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionProgressChanged(IIF)V

    return-void
.end method

.method private invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1160
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 1161
    iget v1, p2, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_20

    const/4 v2, 0x5

    if-eq v1, v2, :cond_14

    goto :goto_40

    .line 1175
    :cond_14
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionFinished(IZ)V

    goto :goto_40

    .line 1172
    :cond_20
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionProgressChanged(IF)V

    .line 1173
    goto :goto_40

    .line 1169
    :cond_2c
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionActiveChanged(IZ)V

    .line 1170
    goto :goto_40

    .line 1166
    :cond_38
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionBadgingChanged(I)V

    .line 1167
    goto :goto_40

    .line 1163
    :cond_3c
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionCreated(I)V

    .line 1164
    nop

    .line 1178
    :goto_40
    return-void
.end method

.method private notifySessionActiveChanged(IIZ)V
    .registers 5

    .line 1189
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1190
    return-void
.end method

.method private notifySessionBadgingChanged(II)V
    .registers 4

    .line 1185
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1186
    return-void
.end method

.method private notifySessionCreated(II)V
    .registers 4

    .line 1181
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1182
    return-void
.end method

.method private notifySessionProgressChanged(IIF)V
    .registers 5

    .line 1193
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1143
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1144
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1145
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_29

    .line 1146
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageInstallerCallback;

    .line 1147
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/IntPredicate;

    .line 1148
    invoke-interface {v4, v0}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1150
    :try_start_21
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    .line 1152
    goto :goto_26

    .line 1151
    :catch_25
    move-exception v3

    .line 1145
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1155
    :cond_29
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1156
    return-void
.end method

.method public notifySessionFinished(IIZ)V
    .registers 5

    .line 1197
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1198
    return-void
.end method

.method public register(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V
    .registers 4

    .line 1134
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1135
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 3

    .line 1138
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1139
    return-void
.end method
