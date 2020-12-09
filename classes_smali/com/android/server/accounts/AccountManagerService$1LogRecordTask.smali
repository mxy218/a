.class Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogRecordTask"
.end annotation


# instance fields
.field private final accountId:J

.field private final action:Ljava/lang/String;

.field private final callingUid:I

.field private final tableName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field private final userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field private final userDebugDbInsertionPoint:J


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V
    .registers 10

    .line 5136
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5137
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    .line 5138
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    .line 5139
    iput-wide p4, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    .line 5140
    iput-object p6, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 5141
    iput p7, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->callingUid:I

    .line 5142
    iput-wide p8, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userDebugDbInsertionPoint:J

    .line 5143
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 5147
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v0, v0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5148
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userAccount:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->getStatementForLogging()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 5149
    if-nez v1, :cond_13

    .line 5150
    monitor-exit v0

    return-void

    .line 5152
    :cond_13
    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5153
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 5154
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService;->access$3500(Lcom/android/server/accounts/AccountManagerService;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 5155
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->callingUid:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5156
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 5157
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->userDebugDbInsertionPoint:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_8a

    .line 5159
    :try_start_45
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_48} :catch_4e
    .catchall {:try_start_45 .. :try_end_48} :catchall_4c

    .line 5166
    :goto_48
    :try_start_48
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_8a

    .line 5167
    goto :goto_84

    .line 5166
    :catchall_4c
    move-exception v2

    goto :goto_86

    .line 5160
    :catch_4e
    move-exception v2

    .line 5163
    :try_start_4f
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert a log record. accountId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->accountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " tableName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_4f .. :try_end_83} :catchall_4c

    goto :goto_48

    .line 5168
    :goto_84
    :try_start_84
    monitor-exit v0

    .line 5169
    return-void

    .line 5166
    :goto_86
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    throw v2

    .line 5168
    :catchall_8a
    move-exception v1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_8a

    throw v1
.end method
