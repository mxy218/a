.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$1;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .registers 8

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_46

    .line 205
    const-string v2, "init.svc.uncrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v3, "init.svc.setup-bcb"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    const-string v4, "init.svc.clear-bcb"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    const-string/jumbo v5, "running"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-nez v2, :cond_31

    .line 209
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_31

    :cond_2f
    move v2, v0

    goto :goto_32

    :cond_31
    :goto_31
    move v2, v6

    .line 217
    :goto_32
    if-nez v2, :cond_35

    .line 218
    return v6

    .line 222
    :cond_35
    const-wide/16 v2, 0x3e8

    :try_start_37
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 225
    goto :goto_43

    .line 223
    :catch_3b
    move-exception v2

    .line 224
    const-string v3, "RecoverySystemService"

    const-string v4, "Interrupted:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    :cond_46
    return v0
.end method

.method private connectService()Landroid/net/LocalSocket;
    .registers 8

    .line 232
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 233
    nop

    .line 237
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/16 v3, 0x1e

    const-string v4, "RecoverySystemService"

    if-ge v2, v3, :cond_2e

    .line 239
    :try_start_e
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v5, "uncrypt"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_1e

    .line 241
    nop

    .line 242
    const/4 v1, 0x1

    goto :goto_2e

    .line 243
    :catch_1e
    move-exception v3

    .line 245
    const-wide/16 v5, 0x3e8

    :try_start_21
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    .line 248
    goto :goto_2b

    .line 246
    :catch_25
    move-exception v3

    .line 247
    const-string v5, "Interrupted:"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 251
    :cond_2e
    :goto_2e
    if-nez v1, :cond_37

    .line 252
    const-string v0, "Timed out connecting to uncrypt socket"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_37
    return-object v0
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 10

    .line 259
    iget-object v0, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v0}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.RECOVERY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 262
    const-string v2, "RecoverySystemService"

    const/4 v3, 0x0

    if-nez v0, :cond_1c

    .line 263
    const-string/jumbo p1, "uncrypt service is unavailable."

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v3

    .line 267
    :cond_1c
    const-string v0, "ctl.start"

    if-eqz p1, :cond_27

    .line 268
    const-string/jumbo v4, "setup-bcb"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 270
    :cond_27
    const-string v4, "clear-bcb"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_2c
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v0

    .line 275
    if-nez v0, :cond_38

    .line 276
    const-string p1, "Failed to connect to uncrypt socket"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v3

    .line 280
    :cond_38
    nop

    .line 281
    nop

    .line 283
    :try_start_3a
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_43} :catch_c7
    .catchall {:try_start_3a .. :try_end_43} :catchall_c3

    .line 284
    :try_start_43
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_bf
    .catchall {:try_start_43 .. :try_end_4c} :catchall_bc

    .line 287
    if-eqz p1, :cond_5f

    .line 288
    :try_start_4e
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 289
    array-length v1, p2

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 290
    array-length v1, p2

    invoke-virtual {v5, p2, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 291
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 295
    :cond_5f
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 299
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 301
    const/16 v1, 0x64

    if-ne p2, v1, :cond_98

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uncrypt "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7b

    const-string/jumbo p1, "setup"

    goto :goto_7d

    :cond_7b
    const-string p1, "clear"

    :goto_7d
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bcb successfully finished."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_8c} :catch_ba
    .catchall {:try_start_4e .. :try_end_8c} :catchall_b8

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    nop

    .line 318
    const/4 p1, 0x1

    return p1

    .line 306
    :cond_98
    :try_start_98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uncrypt failed with status: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_ad} :catch_ba
    .catchall {:try_start_98 .. :try_end_ad} :catchall_b8

    .line 307
    nop

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 307
    return v3

    .line 313
    :catchall_b8
    move-exception p1

    goto :goto_db

    .line 309
    :catch_ba
    move-exception p1

    goto :goto_c1

    .line 313
    :catchall_bc
    move-exception p1

    move-object v5, v1

    goto :goto_db

    .line 309
    :catch_bf
    move-exception p1

    move-object v5, v1

    :goto_c1
    move-object v1, v4

    goto :goto_c9

    .line 313
    :catchall_c3
    move-exception p1

    move-object v4, v1

    move-object v5, v4

    goto :goto_db

    .line 309
    :catch_c7
    move-exception p1

    move-object v5, v1

    .line 310
    :goto_c9
    :try_start_c9
    const-string p2, "IOException when communicating with uncrypt:"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ce
    .catchall {:try_start_c9 .. :try_end_ce} :catchall_d9

    .line 311
    nop

    .line 313
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 311
    return v3

    .line 313
    :catchall_d9
    move-exception p1

    move-object v4, v1

    :goto_db
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method


# virtual methods
.method public clearBcb()Z
    .registers 4

    .line 170
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 172
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 4

    .line 186
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 187
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 188
    monitor-exit v0

    return-void

    .line 192
    :cond_e
    iget-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {p1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 193
    const-string/jumbo v1, "recovery"

    invoke-virtual {p1, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 194
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4

    .line 178
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 179
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 180
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 13

    .line 80
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_5
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v1

    .line 84
    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 85
    const-string p1, "RecoverySystemService"

    const-string/jumbo p2, "uncrypt service is unavailable."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v0

    return v2

    .line 91
    :cond_22
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_148

    .line 93
    :try_start_27
    new-instance v1, Ljava/io/FileWriter;

    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_128
    .catchall {:try_start_27 .. :try_end_2e} :catchall_148

    .line 94
    :try_start_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_11c

    .line 95
    :try_start_42
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_128
    .catchall {:try_start_42 .. :try_end_45} :catchall_148

    .line 99
    nop

    .line 102
    :try_start_46
    const-string p1, "ctl.start"

    const-string/jumbo v1, "uncrypt"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object p1

    .line 106
    if-nez p1, :cond_5d

    .line 107
    const-string p1, "RecoverySystemService"

    const-string p2, "Failed to connect to uncrypt socket"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_148

    return v2

    .line 112
    :cond_5d
    nop

    .line 113
    nop

    .line 115
    :try_start_5f
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_68} :catch_fb
    .catchall {:try_start_5f .. :try_end_68} :catchall_f7

    .line 116
    :try_start_68
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_71} :catch_f3
    .catchall {:try_start_68 .. :try_end_71} :catchall_f0

    .line 117
    const/high16 v3, -0x80000000

    move v5, v3

    .line 119
    :goto_74
    :try_start_74
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 121
    if-ne v6, v5, :cond_7d

    if-eq v5, v3, :cond_7d

    .line 122
    goto :goto_74

    .line 124
    :cond_7d
    nop

    .line 126
    if-ltz v6, :cond_c6

    const/16 v5, 0x64

    if-gt v6, v5, :cond_c6

    .line 128
    const-string v7, "RecoverySystemService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uncrypt read status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_9b} :catch_ee
    .catchall {:try_start_74 .. :try_end_9b} :catchall_ec

    .line 129
    if-eqz p2, :cond_a9

    .line 131
    :try_start_9d
    invoke-interface {p2, v6}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a0} :catch_a1
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_ee
    .catchall {:try_start_9d .. :try_end_a0} :catchall_ec

    .line 134
    goto :goto_a9

    .line 132
    :catch_a1
    move-exception v7

    .line 133
    :try_start_a2
    const-string v7, "RecoverySystemService"

    const-string v8, "RemoteException when posting progress"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_a9
    :goto_a9
    if-ne v6, v5, :cond_c4

    .line 137
    const-string p2, "RecoverySystemService"

    const-string/jumbo v3, "uncrypt successfully finished."

    invoke-static {p2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b6} :catch_ee
    .catchall {:try_start_a2 .. :try_end_b6} :catchall_ec

    .line 142
    nop

    .line 158
    :try_start_b7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    nop

    .line 163
    const/4 p1, 0x1

    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_b7 .. :try_end_c3} :catchall_148

    return p1

    .line 153
    :cond_c4
    move v5, v6

    goto :goto_74

    .line 146
    :cond_c6
    :try_start_c6
    const-string p2, "RecoverySystemService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uncrypt failed with status: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_e0} :catch_ee
    .catchall {:try_start_c6 .. :try_end_e0} :catchall_ec

    .line 151
    nop

    .line 158
    :try_start_e1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_e1 .. :try_end_eb} :catchall_148

    .line 151
    return v2

    .line 158
    :catchall_ec
    move-exception p2

    goto :goto_112

    .line 154
    :catch_ee
    move-exception p2

    goto :goto_f5

    .line 158
    :catchall_f0
    move-exception p2

    move-object v4, v3

    goto :goto_112

    .line 154
    :catch_f3
    move-exception p2

    move-object v4, v3

    :goto_f5
    move-object v3, v1

    goto :goto_fd

    .line 158
    :catchall_f7
    move-exception p2

    move-object v1, v3

    move-object v4, v1

    goto :goto_112

    .line 154
    :catch_fb
    move-exception p2

    move-object v4, v3

    .line 155
    :goto_fd
    :try_start_fd
    const-string v1, "RecoverySystemService"

    const-string v5, "IOException when reading status: "

    invoke-static {v1, v5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_fd .. :try_end_104} :catchall_110

    .line 156
    nop

    .line 158
    :try_start_105
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    .line 156
    return v2

    .line 158
    :catchall_110
    move-exception p2

    move-object v1, v3

    :goto_112
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p2
    :try_end_11c
    .catchall {:try_start_105 .. :try_end_11c} :catchall_148

    .line 93
    :catchall_11c
    move-exception p1

    :try_start_11d
    throw p1
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11e

    .line 95
    :catchall_11e
    move-exception p2

    :try_start_11f
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_123

    goto :goto_127

    :catchall_123
    move-exception v1

    :try_start_124
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_127
    throw p2
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_128} :catch_128
    .catchall {:try_start_124 .. :try_end_128} :catchall_148

    :catch_128
    move-exception p1

    .line 96
    :try_start_129
    const-string p2, "RecoverySystemService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException when writing \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    monitor-exit v0

    return v2

    .line 164
    :catchall_148
    move-exception p1

    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_129 .. :try_end_14a} :catchall_148

    throw p1
.end method
