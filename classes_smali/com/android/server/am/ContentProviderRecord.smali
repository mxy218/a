.class final Lcom/android/server/am/ContentProviderRecord;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    }
.end annotation


# instance fields
.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field externalProcessNoHandleCount:I

.field externalProcessTokenToHandle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final info:Landroid/content/pm/ProviderInfo;

.field launchingApp:Lcom/android/server/am/ProcessRecord;

.field final name:Landroid/content/ComponentName;

.field public noReleaseNeeded:Z

.field proc:Lcom/android/server/am/ProcessRecord;

.field public provider:Landroid/content/IContentProvider;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field shortStringName:Ljava/lang/String;

.field final singleton:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "_service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"  # Landroid/content/pm/ProviderInfo;
    .param p3, "ai"  # Landroid/content/pm/ApplicationInfo;
    .param p4, "_name"  # Landroid/content/ComponentName;
    .param p5, "_singleton"  # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 96
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 97
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 98
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 99
    iput-object p3, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 100
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 101
    iput-boolean p5, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 104
    invoke-direct {p0, p3}, Lcom/android/server/am/ContentProviderRecord;->allowReleaseProvider(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;)V
    .registers 3
    .param p1, "cpr"  # Lcom/android/server/am/ContentProviderRecord;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 109
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 110
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 111
    iget v0, p1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 112
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 113
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 114
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    .line 115
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/am/ContentProviderRecord;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method private allowReleaseProvider(Landroid/content/pm/ApplicationInfo;)Z
    .registers 9
    .param p1, "appInfo"  # Landroid/content/pm/ApplicationInfo;

    .line 71
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 72
    .local v0, "uid":I
    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1a

    :cond_9
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-eqz v2, :cond_1c

    .line 73
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v2, v1

    .line 75
    .local v2, "noRelease":Z
    :goto_1d
    if-ne v2, v1, :cond_5b

    .line 77
    const-string v1, "com.meizu.safe"

    const-string v3, "com.meizu.battery"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "allowReleaseProcessList":[Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 82
    .local v3, "processName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    array-length v5, v1

    if-ge v4, v5, :cond_5b

    .line 83
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 84
    const/4 v2, 0x0

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allow provider release UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContentProviderRecord"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 91
    .end local v1  # "allowReleaseProcessList":[Ljava/lang/String;
    .end local v3  # "processName":Ljava/lang/String;
    .end local v4  # "i":I
    :cond_5b
    return v2
.end method

.method private removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 195
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 196
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->unlinkFromOwnDeathLocked()V

    .line 197
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->stopAssociation()V

    .line 198
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_1e

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 202
    :cond_1e
    return-void
.end method


# virtual methods
.method public addExternalProcessHandleLocked(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "callingUid"  # I
    .param p3, "callingTag"  # Ljava/lang/String;

    .line 156
    if-nez p1, :cond_9

    .line 157
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    goto :goto_32

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-nez v0, :cond_14

    .line 160
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 162
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 163
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-nez v0, :cond_2c

    .line 164
    new-instance v1, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;-><init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V

    move-object v0, v1

    .line 165
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0, p0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V

    .line 168
    :cond_2c
    iget v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    .line 170
    .end local v0  # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    :goto_32
    return-void
.end method

.method public canRunHere(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 151
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "full"  # Z

    .line 213
    if-eqz p3, :cond_20

    .line 214
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "package="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string v0, " process="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "proc="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_40

    .line 220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "launchingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 222
    :cond_40
    if-eqz p3, :cond_5a

    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 224
    const-string v0, " provider="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 226
    :cond_5a
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_6c

    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "singleton="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 229
    :cond_6c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "authority="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    if-eqz p3, :cond_b7

    .line 231
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v0, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-eqz v0, :cond_b7

    .line 232
    :cond_8f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isSyncable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 233
    const-string v0, " multiprocess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 234
    const-string v0, " initOrder="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v0, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 237
    :cond_b7
    if-eqz p3, :cond_eb

    .line 238
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_112

    .line 239
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "externals:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d9

    .line 241
    const-string v0, " w/token="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    :cond_d9
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v0, :cond_e7

    .line 245
    const-string v0, " notoken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 248
    :cond_e7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_112

    .line 251
    :cond_eb
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_f7

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v0, :cond_112

    .line 252
    :cond_f7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 253
    const-string v0, " connections, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 254
    const-string v0, " external handles"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    :cond_112
    :goto_112
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_158

    .line 258
    if-eqz p3, :cond_124

    .line 259
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Connections:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    :cond_124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_125
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_158

    .line 262
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    .line 263
    .local v1, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->toClientString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eq v2, p0, :cond_155

    .line 265
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    *** WRONG PROVIDER: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-object v2, v1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 261
    .end local v1  # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_155
    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    .line 270
    .end local v0  # "i":I
    :cond_158
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    return-object v0
.end method

.method public hasConnectionOrHandle()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public hasExternalProcessHandles()Z
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public newHolder(Lcom/android/server/am/ContentProviderConnection;)Landroid/app/ContentProviderHolder;
    .registers 4
    .param p1, "conn"  # Lcom/android/server/am/ContentProviderConnection;

    .line 119
    new-instance v0, Landroid/app/ContentProviderHolder;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 120
    .local v0, "holder":Landroid/app/ContentProviderHolder;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    iput-object v1, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 121
    iget-boolean v1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v1, v0, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 122
    iput-object p1, v0, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 123
    return-object v0
.end method

.method public removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 173
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "hasHandle":Z
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 176
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 177
    .local v1, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-eqz v1, :cond_22

    .line 178
    const/4 v0, 0x1

    .line 179
    iget v3, v1, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    .line 180
    iget v3, v1, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    if-nez v3, :cond_22

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    .line 182
    return v2

    .line 186
    .end local v1  # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    :cond_22
    if-nez v0, :cond_2a

    .line 187
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 188
    return v2

    .line 191
    .end local v0  # "hasHandle":Z
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public setProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;

    .line 127
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 129
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "iconn":I
    :goto_a
    if-ltz v0, :cond_20

    .line 130
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    .line 131
    .local v1, "conn":Lcom/android/server/am/ContentProviderConnection;
    if-eqz p1, :cond_1a

    .line 132
    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    goto :goto_1d

    .line 134
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    .line 129
    .end local v1  # "conn":Lcom/android/server/am/ContentProviderConnection;
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 137
    .end local v0  # "iconn":I
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-eqz v0, :cond_40

    .line 138
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "iext":I
    :goto_2a
    if-ltz v0, :cond_40

    .line 139
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 140
    .local v1, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-eqz p1, :cond_3a

    .line 141
    invoke-virtual {v1, p0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V

    goto :goto_3d

    .line 143
    :cond_3a
    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->stopAssociation()V

    .line 138
    .end local v1  # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    :goto_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 148
    .end local v0  # "iext":I
    :cond_40
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 290
    return-object v0

    .line 292
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 293
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 275
    return-object v0

    .line 277
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 278
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ContentProviderRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method
