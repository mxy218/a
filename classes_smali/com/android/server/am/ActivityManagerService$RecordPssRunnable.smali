.class final Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordPssRunnable"
.end annotation


# instance fields
.field private final mHeapdumpFile:Ljava/io/File;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/io/File;)V
    .registers 4

    .line 16128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16129
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 16130
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 16131
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    .line 16132
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 16136
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 16137
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 16141
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 16136
    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 16142
    nop

    .line 16144
    const/4 v0, 0x0

    :try_start_17
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 16145
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    const/high16 v2, 0x2e000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 16150
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_28} :catch_42
    .catchall {:try_start_17 .. :try_end_28} :catchall_40

    .line 16151
    if-eqz v3, :cond_3a

    .line 16157
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2d
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    .line 16159
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 16157
    move-object v8, v0

    invoke-interface/range {v3 .. v9}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_38} :catch_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_38} :catch_42
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 16162
    goto :goto_3a

    .line 16161
    :catch_39
    move-exception v1

    .line 16167
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_4e

    .line 16169
    :try_start_3c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4c

    goto :goto_4b

    .line 16167
    :catchall_40
    move-exception v1

    goto :goto_4f

    .line 16164
    :catch_42
    move-exception v1

    .line 16165
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    .line 16167
    if-eqz v0, :cond_4e

    .line 16169
    :try_start_48
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 16171
    :goto_4b
    goto :goto_4e

    .line 16170
    :catch_4c
    move-exception v0

    goto :goto_4b

    .line 16174
    :cond_4e
    :goto_4e
    return-void

    .line 16167
    :goto_4f
    if-eqz v0, :cond_56

    .line 16169
    :try_start_51
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 16171
    goto :goto_56

    .line 16170
    :catch_55
    move-exception v0

    .line 16171
    :cond_56
    :goto_56
    throw v1
.end method
