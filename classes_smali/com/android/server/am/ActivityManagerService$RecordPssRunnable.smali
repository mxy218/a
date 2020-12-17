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
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "proc"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "heapdumpFile"  # Ljava/io/File;

    .line 16997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16998
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 16999
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 17000
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    .line 17001
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 17005
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 17006
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 17010
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 17005
    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 17011
    const/4 v0, 0x0

    .line 17013
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_16
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 17014
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    const/high16 v2, 0x2e000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 17019
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_28} :catch_6b
    .catchall {:try_start_16 .. :try_end_28} :catchall_69

    .line 17020
    .local v1, "thread":Landroid/app/IApplicationThread;
    if-eqz v1, :cond_61

    .line 17022
    :try_start_2a
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_50

    .line 17023
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting dump heap from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17026
    :cond_50
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RecordPssRunnable;->mHeapdumpFile:Ljava/io/File;

    .line 17028
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 17026
    move-object v2, v1

    move-object v7, v0

    invoke-interface/range {v2 .. v8}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_5f} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_5f} :catch_6b
    .catchall {:try_start_2a .. :try_end_5f} :catchall_69

    .line 17031
    goto :goto_61

    .line 17030
    :catch_60
    move-exception v2

    .line 17036
    .end local v1  # "thread":Landroid/app/IApplicationThread;
    :cond_61
    :goto_61
    if-eqz v0, :cond_75

    .line 17038
    :try_start_63
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 17040
    :goto_66
    goto :goto_75

    .line 17039
    :catch_67
    move-exception v1

    goto :goto_66

    .line 17036
    :catchall_69
    move-exception v1

    goto :goto_76

    .line 17033
    :catch_6b
    move-exception v1

    .line 17034
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_69

    .line 17036
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_75

    .line 17038
    :try_start_71
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_67

    goto :goto_66

    .line 17043
    :cond_75
    :goto_75
    return-void

    .line 17036
    :goto_76
    if-eqz v0, :cond_7d

    .line 17038
    :try_start_78
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 17040
    goto :goto_7d

    .line 17039
    :catch_7c
    move-exception v2

    .line 17040
    :cond_7d
    :goto_7d
    throw v1
.end method
