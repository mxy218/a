.class Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
.super Landroid/os/ShellCommand;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/testharness/TestHarnessModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestHarnessModeShellCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/testharness/TestHarnessModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;Lcom/android/server/testharness/TestHarnessModeService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/testharness/TestHarnessModeService;
    .param p2, "x1"  # Lcom/android/server/testharness/TestHarnessModeService$1;

    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    return-void
.end method

.method private checkPermissions()V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENABLE_TEST_HARNESS_MODE"

    const-string v2, "You must hold android.permission.ENABLE_TEST_HARNESS_MODE to enable Test Harness Mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private getBytesFromFile(Ljava/io/File;)[B
    .registers 9
    .param p1, "file"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3c

    .line 352
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 353
    .local v1, "path":Ljava/nio/file/Path;
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 354
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_14
    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 355
    .local v2, "size":I
    new-array v3, v2, [B

    .line 356
    .local v3, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2e

    .line 357
    .local v4, "numBytes":I
    if-ne v4, v2, :cond_26

    .line 360
    nop

    .line 361
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 360
    return-object v3

    .line 358
    :cond_26
    :try_start_26
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to read the whole file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0  # "inputStream":Ljava/io/InputStream;
    .end local v1  # "path":Ljava/nio/file/Path;
    .end local p0  # "this":Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    .end local p1  # "file":Ljava/io/File;
    throw v5
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 353
    .end local v2  # "size":I
    .end local v3  # "bytes":[B
    .end local v4  # "numBytes":I
    .restart local v0  # "inputStream":Ljava/io/InputStream;
    .restart local v1  # "path":Ljava/nio/file/Path;
    .restart local p0  # "this":Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    .restart local p1  # "file":Ljava/io/File;
    :catchall_2e
    move-exception v2

    .end local v0  # "inputStream":Ljava/io/InputStream;
    .end local v1  # "path":Ljava/nio/file/Path;
    .end local p0  # "this":Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    .end local p1  # "file":Ljava/io/File;
    :try_start_2f
    throw v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 361
    .restart local v0  # "inputStream":Ljava/io/InputStream;
    .restart local v1  # "path":Ljava/nio/file/Path;
    .restart local p0  # "this":Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    .restart local p1  # "file":Ljava/io/File;
    :catchall_30
    move-exception v3

    if-eqz v0, :cond_3b

    :try_start_33
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v3

    .line 350
    .end local v0  # "inputStream":Ljava/io/InputStream;
    .end local v1  # "path":Ljava/nio/file/Path;
    :cond_3c
    :goto_3c
    new-array v0, v0, [B

    return-object v0
.end method

.method private handleEnable()I
    .registers 12

    .line 310
    const-string v0, "Failed to enable Test Harness Mode"

    const-class v1, Landroid/debug/AdbManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/debug/AdbManagerInternal;

    .line 311
    .local v1, "adbManager":Landroid/debug/AdbManagerInternal;
    invoke-virtual {v1}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v2

    .line 312
    .local v2, "adbKeys":Ljava/io/File;
    invoke-virtual {v1}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v3

    .line 313
    .local v3, "adbTempKeys":Ljava/io/File;
    const/4 v4, 0x1

    if-nez v2, :cond_21

    if-nez v3, :cond_21

    .line 315
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 316
    const-string v5, "No ADB keys stored; not enabling test harness mode"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    return v4

    .line 321
    :cond_21
    :try_start_21
    invoke-direct {p0, v2}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v5

    .line 322
    .local v5, "adbKeysBytes":[B
    invoke-direct {p0, v3}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v6

    .line 324
    .local v6, "adbTempKeysBytes":[B
    new-instance v7, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v7, v5, v6}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>([B[B)V

    .line 325
    .local v7, "persistentData":Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    iget-object v8, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v8}, Lcom/android/server/testharness/TestHarnessModeService;->access$200(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v8

    .line 326
    .local v8, "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    if-nez v8, :cond_47

    .line 327
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->access$300()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Failed to enable Test Harness Mode. No implementation of PersistentDataBlockManagerInternal was bound."

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    return v4

    .line 332
    :cond_47
    invoke-virtual {v7}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->toBytes()[B

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/server/PersistentDataBlockManagerInternal;->setTestHarnessModeData([B)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_4e} :catch_7b

    .line 337
    .end local v5  # "adbKeysBytes":[B
    .end local v6  # "adbTempKeysBytes":[B
    .end local v7  # "persistentData":Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    .end local v8  # "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    nop

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "i":Landroid/content/Intent;
    const-string v5, "android"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.REASON"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v5, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    iget-object v4, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v4}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 345
    const/4 v4, 0x0

    return v4

    .line 333
    .end local v0  # "i":Landroid/content/Intent;
    :catch_7b
    move-exception v5

    .line 334
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/testharness/TestHarnessModeService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to store ADB keys."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    return v4
.end method

.method private isDeviceSecure()Z
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 306
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v1}, Lcom/android/server/testharness/TestHarnessModeService;->access$100(Lcom/android/server/testharness/TestHarnessModeService;)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"  # Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4d6ada7d

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1b

    const v1, 0x416ad28e

    if-eq v0, v1, :cond_10

    :cond_f
    goto :goto_25

    :cond_10
    const-string/jumbo v0, "restore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_26

    :cond_1b
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_26

    :goto_25
    const/4 v0, -0x1

    :goto_26
    if-eqz v0, :cond_2f

    if-eq v0, v2, :cond_2f

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 279
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->checkPermissions()V

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    .local v0, "originalId":J
    :try_start_36
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->isDeviceSecure()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 283
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Test Harness Mode cannot be enabled if there is a lock screen"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_52

    .line 286
    const/4 v2, 0x2

    .line 290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    return v2

    .line 288
    :cond_4a
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleEnable()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_52

    .line 290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    return v2

    .line 290
    :catchall_52
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onHelp()V
    .registers 3

    .line 366
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 367
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "About:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    const-string v1, "  Test Harness Mode is a mode that the device can be placed in to prepare"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    const-string v1, "  the device for running UI tests. The device is placed into this mode by"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    const-string v1, "  first wiping all data from the device, preserving ADB keys."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 372
    const-string v1, "  By default, the following settings are configured:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const-string v1, "    * Package Verifier is disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    const-string v1, "    * Stay Awake While Charging is enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v1, "    * OTA Updates are disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v1, "    * Auto-Sync for accounts is disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 378
    const-string v1, "  Other apps may configure themselves differently in Test Harness Mode by"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v1, "  checking ActivityManager.isRunningInUserTestHarness()"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 381
    const-string v1, "Test Harness Mode commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 385
    const-string v1, "  enable|restore"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string v1, "    Erase all data from this device and enable Test Harness Mode,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string v1, "    preserving the stored ADB keys currently on the device and toggling"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v1, "    settings in a way that are conducive to Instrumentation testing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    return-void
.end method
