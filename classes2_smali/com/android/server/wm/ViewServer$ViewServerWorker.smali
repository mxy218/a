.class Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .registers 3

    .line 214
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 216
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 217
    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 218
    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v0}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 296
    nop

    .line 298
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_79
    .catchall {:try_start_c .. :try_end_1c} :catchall_66

    .line 299
    :goto_1c
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 300
    nop

    .line 301
    nop

    .line 302
    monitor-enter p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_64
    .catchall {:try_start_1c .. :try_end_25} :catchall_62

    .line 303
    :goto_25
    :try_start_25
    iget-boolean v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v1, :cond_31

    iget-boolean v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v1, :cond_31

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_25

    .line 306
    :cond_31
    iget-boolean v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 307
    iput-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 308
    move v1, v0

    goto :goto_3b

    .line 306
    :cond_3a
    move v1, v3

    .line 310
    :goto_3b
    iget-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v4, :cond_42

    .line 311
    iput-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 312
    move v3, v0

    .line 314
    :cond_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_58

    .line 315
    if-eqz v1, :cond_4d

    .line 316
    :try_start_45
    const-string v1, "LIST UPDATE\n"

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 319
    :cond_4d
    if-eqz v3, :cond_57

    .line 320
    const-string v1, "ACTION_FOCUS UPDATE\n"

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_57} :catch_64
    .catchall {:try_start_45 .. :try_end_57} :catchall_62

    .line 323
    :cond_57
    goto :goto_1c

    .line 314
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5b} :catch_64
    .catchall {:try_start_5a .. :try_end_5b} :catchall_62

    .line 327
    :cond_5b
    nop

    .line 329
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_80

    .line 330
    :catch_60
    move-exception v1

    goto :goto_82

    .line 327
    :catchall_62
    move-exception v0

    goto :goto_68

    .line 324
    :catch_64
    move-exception v1

    goto :goto_7b

    .line 327
    :catchall_66
    move-exception v0

    move-object v2, v1

    :goto_68
    if-eqz v2, :cond_6f

    .line 329
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 332
    goto :goto_6f

    .line 330
    :catch_6e
    move-exception v1

    .line 334
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    throw v0

    .line 324
    :catch_79
    move-exception v2

    move-object v2, v1

    .line 327
    :goto_7b
    if-eqz v2, :cond_82

    .line 329
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 332
    :goto_80
    goto :goto_82

    .line 330
    :catch_81
    move-exception v1

    .line 334
    :cond_82
    :goto_82
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 335
    nop

    .line 336
    return v0
.end method


# virtual methods
.method public focusChanged()V
    .registers 2

    .line 288
    monitor-enter p0

    .line 289
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit p0

    .line 292
    return-void

    .line 291
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 8

    .line 222
    const-string v0, "WindowManager"

    .line 224
    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_c1
    .catchall {:try_start_3 .. :try_end_15} :catchall_be

    .line 226
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 231
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 232
    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    .line 233
    nop

    .line 234
    const-string v3, ""

    goto :goto_32

    .line 236
    :cond_26
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 237
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v4

    .line 241
    :goto_32
    const-string v4, "PROTOCOL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_38} :catch_bc
    .catchall {:try_start_15 .. :try_end_38} :catchall_e1

    const-string v5, "4"

    if-eqz v4, :cond_43

    .line 242
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-static {v3, v5}, Lcom/android/server/wm/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    goto :goto_95

    .line 243
    :cond_43
    const-string v4, "SERVER"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 244
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-static {v3, v5}, Lcom/android/server/wm/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    goto :goto_95

    .line 245
    :cond_52
    const-string v4, "LIST"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 246
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v3}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v3

    goto :goto_95

    .line 247
    :cond_67
    const-string v4, "GET_FOCUS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 248
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v3}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v3

    goto :goto_95

    .line 249
    :cond_7c
    const-string v4, "AUTOLIST"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 250
    invoke-direct {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v3

    goto :goto_95

    .line 252
    :cond_89
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v4}, Lcom/android/server/wm/ViewServer;->access$100(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 256
    :goto_95
    if-nez v3, :cond_ab

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred with the command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_ab} :catch_bc
    .catchall {:try_start_3c .. :try_end_ab} :catchall_e1

    .line 262
    :cond_ab
    nop

    .line 264
    :try_start_ac
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    .line 268
    goto :goto_b4

    .line 266
    :catch_b0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    :goto_b4
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v0, :cond_e0

    .line 272
    :try_start_b8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_dc

    goto :goto_e0

    .line 259
    :catch_bc
    move-exception v1

    goto :goto_c5

    .line 262
    :catchall_be
    move-exception v0

    move-object v2, v1

    goto :goto_e2

    .line 259
    :catch_c1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 260
    :goto_c5
    :try_start_c5
    const-string v3, "Connection error: "

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ca
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_e1

    .line 262
    if-eqz v2, :cond_d4

    .line 264
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    .line 268
    goto :goto_d4

    .line 266
    :catch_d0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    :cond_d4
    :goto_d4
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v0, :cond_e0

    .line 272
    :try_start_d8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_e0

    .line 273
    :catch_dc
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 278
    :cond_e0
    :goto_e0
    return-void

    .line 262
    :catchall_e1
    move-exception v0

    :goto_e2
    if-eqz v2, :cond_ec

    .line 264
    :try_start_e4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    .line 268
    goto :goto_ec

    .line 266
    :catch_e8
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    :cond_ec
    :goto_ec
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v1, :cond_f8

    .line 272
    :try_start_f0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    .line 275
    goto :goto_f8

    .line 273
    :catch_f4
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    :cond_f8
    :goto_f8
    throw v0
.end method

.method public windowsChanged()V
    .registers 2

    .line 281
    monitor-enter p0

    .line 282
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit p0

    .line 285
    return-void

    .line 284
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
