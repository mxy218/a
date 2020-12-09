.class public Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.super Lcom/android/server/SystemService;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VoiceInteractionManagerService"


# instance fields
.field final mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field final mContext:Landroid/content/Context;

.field final mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

.field final mLoadedKeyphraseIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mResolver:Landroid/content/ContentResolver;

.field private final mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

.field final mUserManager:Landroid/os/UserManager;

.field private final mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/app/IVoiceInteractionSessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mLoadedKeyphraseIds:Landroid/util/ArraySet;

    .line 110
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    .line 115
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 117
    new-instance v0, Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    .line 118
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 119
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 120
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 119
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 121
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 122
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 121
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 123
    const-class v0, Landroid/os/UserManager;

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 123
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mUserManager:Landroid/os/UserManager;

    .line 126
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 128
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mVoiceInteractionSessionListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 150
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_1f

    .line 151
    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 152
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 151
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 153
    const-class p1, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerInternal:Lcom/android/server/soundtrigger/SoundTriggerInternal;

    goto :goto_2c

    .line 154
    :cond_1f
    const/16 v0, 0x258

    if-ne p1, v0, :cond_2c

    .line 155
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->isSafeMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->systemRunning(Z)V

    .line 157
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const-string/jumbo v1, "voiceinteraction"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 145
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    new-instance v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$LocalService;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public onStartUser(I)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 162
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchUser(I)V

    .line 173
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 167
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeeded(Z)V

    .line 168
    return-void
.end method
