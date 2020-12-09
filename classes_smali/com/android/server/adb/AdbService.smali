.class public Lcom/android/server/adb/AdbService;
.super Landroid/debug/IAdbManager$Stub;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/adb/AdbService$AdbSettingsObserver;,
        Lcom/android/server/adb/AdbService$AdbHandler;,
        Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;,
        Lcom/android/server/adb/AdbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_BOOT_COMPLETED:I = 0x2

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdbService"

.field private static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"


# instance fields
.field private mAdbEnabled:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

.field private final mHandler:Lcom/android/server/adb/AdbService$AdbHandler;

.field private final mTransports:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/debug/IAdbTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 196
    invoke-direct {p0}, Landroid/debug/IAdbManager$Stub;-><init>()V

    .line 191
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    .line 197
    iput-object p1, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 200
    invoke-static {}, Landroid/sysprop/AdbProperties;->secure()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 201
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 202
    if-eqz v0, :cond_3d

    if-nez v1, :cond_3d

    .line 203
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 206
    :cond_3d
    new-instance p1, Lcom/android/server/adb/AdbService$AdbHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/adb/AdbService$AdbHandler;-><init>(Lcom/android/server/adb/AdbService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbService;->mHandler:Lcom/android/server/adb/AdbService$AdbHandler;

    .line 208
    const-class p1, Landroid/debug/AdbManagerInternal;

    new-instance v0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;Lcom/android/server/adb/AdbService$1;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/adb/AdbService$1;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/adb/AdbService;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mAdbEnabled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/adb/AdbService;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/adb/AdbService;Z)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService;->setAdbEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbService$AdbHandler;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mHandler:Lcom/android/server/adb/AdbService$AdbHandler;

    return-object p0
.end method

.method private setAdbEnabled(Z)V
    .registers 6

    .line 266
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mAdbEnabled:Z

    if-ne p1, v0, :cond_5

    .line 267
    return-void

    .line 269
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mAdbEnabled:Z

    .line 271
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/debug/IAdbTransport;

    .line 273
    :try_start_1d
    invoke-interface {v1, p1}, Landroid/debug/IAdbTransport;->onAdbEnabled(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 276
    goto :goto_3c

    .line 274
    :catch_21
    move-exception v2

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send onAdbEnabled to transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdbService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_3c
    goto :goto_11

    .line 279
    :cond_3d
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_44

    .line 280
    invoke-virtual {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(Z)V

    .line 282
    :cond_44
    return-void
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .registers 6

    .line 238
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_f

    .line 240
    invoke-virtual {v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->allowDebugging(ZLjava/lang/String;)V

    .line 242
    :cond_f
    return-void
.end method

.method public bootCompleted()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mHandler:Lcom/android/server/adb/AdbService$AdbHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbService$AdbHandler;->sendEmptyMessage(I)Z

    .line 234
    return-void
.end method

.method public clearDebuggingKeys()V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_10

    .line 256
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->clearDebuggingKeys()V

    .line 261
    return-void

    .line 258
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot clear ADB debugging keys, AdbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyDebugging()V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_f

    .line 248
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->denyDebugging()V

    .line 250
    :cond_f
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 286
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "AdbService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 288
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 291
    :try_start_16
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 292
    invoke-static {p2, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 294
    const/4 p3, 0x0

    .line 295
    const-string v4, "--proto"

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 296
    const/4 p3, 0x1

    .line 299
    :cond_28
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eqz v4, :cond_44

    const-string v4, "-a"

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    if-eqz p3, :cond_39

    goto :goto_44

    .line 316
    :cond_39
    const-string p1, "Dump current ADB state"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 317
    const-string p1, "  No commands available"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_74

    .line 301
    :cond_44
    :goto_44
    if-eqz p3, :cond_51

    .line 302
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_60

    .line 304
    :cond_51
    const-string p1, "ADB MANAGER STATE (dumpsys adb):"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 309
    :goto_60
    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p1, :cond_70

    .line 310
    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    const-string p3, "debugging_manager"

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 314
    :cond_70
    invoke-virtual {p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_73
    .catchall {:try_start_16 .. :try_end_73} :catchall_79

    .line 315
    nop

    .line 320
    :goto_74
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_79
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public systemReady()V
    .registers 4

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_enabled"

    .line 221
    iget-boolean v2, p0, Lcom/android/server/adb/AdbService;->mAdbEnabled:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    .line 220
    :goto_b
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    .line 225
    goto :goto_17

    .line 222
    :catch_f
    move-exception v0

    .line 224
    const-string v0, "AdbService"

    const-string v1, "ADB_ENABLED is restricted."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_17
    return-void
.end method
