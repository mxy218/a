.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "ContentSuggestionsPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;",
        "Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 64
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->updateRemoteServiceLocked()V

    return-void
.end method

.method private ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    if-nez v0, :cond_40

    .line 163
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 164
    if-nez v0, :cond_1b

    .line 165
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->verbose:Z

    if-eqz v0, :cond_19

    .line 166
    sget-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "ensureRemoteServiceLocked(): not set"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_19
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 172
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mUserId:I

    new-instance v5, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;

    invoke-direct {v5, p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V

    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    iget-boolean v7, v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->verbose:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;ZZ)V

    iput-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 184
    :cond_40
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    return-object v0
.end method

.method private updateRemoteServiceLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    if-eqz v0, :cond_a

    .line 153
    invoke-virtual {v0}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->destroy()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 156
    :cond_a
    return-void
.end method


# virtual methods
.method classifyContentSelectionsLocked(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_9

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 140
    :cond_9
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_40

    .line 78
    nop

    .line 79
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 86
    return-object p1

    .line 80
    :cond_18
    sget-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentSuggestionsService from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not require permission "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Service does not require permission android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :catch_40
    move-exception v0

    .line 76
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method notifyInteractionLocked(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_9

    .line 146
    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 148
    :cond_9
    return-void
.end method

.method provideContextImageLocked(ILandroid/os/Bundle;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_2a

    .line 101
    const/4 v1, 0x0

    .line 102
    nop

    .line 105
    const-string v2, "android.contentsuggestions.extra.BITMAP"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_27

    .line 106
    iget-object v2, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 107
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTaskSnapshotNoRestore(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_27

    .line 109
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 110
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_27

    .line 112
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v3

    .line 117
    :cond_27
    invoke-virtual {v0, p1, v1, v3, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->provideContextImage(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V

    .line 120
    :cond_2a
    return-void
.end method

.method suggestContentSelectionsLocked(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 130
    :cond_9
    return-void
.end method

.method protected updateLocked(Z)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 92
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    .line 93
    invoke-direct {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->updateRemoteServiceLocked()V

    .line 94
    return p1
.end method
