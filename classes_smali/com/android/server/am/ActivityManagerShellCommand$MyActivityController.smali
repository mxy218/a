.class final Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
.super Landroid/app/IActivityController$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyActivityController"
.end annotation


# static fields
.field static final RESULT_ANR_DIALOG:I = 0x0

.field static final RESULT_ANR_KILL:I = 0x1

.field static final RESULT_ANR_WAIT:I = 0x1

.field static final RESULT_CRASH_DIALOG:I = 0x0

.field static final RESULT_CRASH_KILL:I = 0x1

.field static final RESULT_DEFAULT:I = 0x0

.field static final RESULT_EARLY_ANR_CONTINUE:I = 0x0

.field static final RESULT_EARLY_ANR_KILL:I = 0x1

.field static final STATE_ANR:I = 0x3

.field static final STATE_CRASHED:I = 0x1

.field static final STATE_EARLY_ANR:I = 0x2

.field static final STATE_NORMAL:I


# instance fields
.field final mGdbPort:Ljava/lang/String;

.field mGdbProcess:Ljava/lang/Process;

.field mGdbThread:Ljava/lang/Thread;

.field mGotGdbPrint:Z

.field final mInput:Ljava/io/InputStream;

.field final mInterface:Landroid/app/IActivityManager;

.field final mMonkey:Z

.field final mPw:Ljava/io/PrintWriter;

.field mResult:I

.field mState:I


# direct methods
.method constructor <init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 6

    .line 1128
    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    .line 1129
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    .line 1130
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 1131
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInput:Ljava/io/InputStream;

    .line 1132
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    .line 1133
    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    .line 1134
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .registers 5

    .line 1138
    monitor-enter p0

    .line 1139
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Activity resuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1141
    monitor-exit p0

    .line 1142
    const/4 p1, 0x1

    return p1

    .line 1141
    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 5

    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Activity starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1150
    monitor-exit p0

    .line 1151
    const/4 p1, 0x1

    return p1

    .line 1150
    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 11

    .line 1157
    monitor-enter p0

    .line 1158
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS CRASHED"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shortMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "longMsg: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "timeMillis: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1164
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo p3, "stack:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string p3, "#"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1168
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result p2

    .line 1169
    if-ne p2, p1, :cond_9b

    const/4 p1, 0x0

    :cond_9b
    monitor-exit p0

    return p1

    .line 1170
    :catchall_9d
    move-exception p1

    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_1 .. :try_end_9f} :catchall_9d

    throw p1
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 7

    .line 1175
    monitor-enter p0

    .line 1176
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: EARLY PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1181
    const/4 p1, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result p1

    .line 1182
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5c

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 1183
    :cond_5c
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1184
    :catchall_5f
    move-exception p1

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 7

    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v0, "processStats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string p3, "#"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1197
    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result p1

    .line 1198
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5a

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 1199
    :cond_5a
    if-ne p1, p2, :cond_5e

    monitor-exit p0

    return p2

    .line 1200
    :cond_5e
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1201
    :catchall_61
    move-exception p1

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_61

    throw p1
.end method

.method killGdbLocked()V
    .registers 4

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGotGdbPrint:Z

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1219
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v2, "Stopping gdbserver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1221
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1222
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1224
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    .line 1225
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1226
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    .line 1228
    :cond_24
    return-void
.end method

.method printMessageForState()V
    .registers 4

    .line 1316
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    if-eqz v0, :cond_53

    const/4 v1, 0x1

    const-string v2, "(k)ill: immediately kill app"

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    goto :goto_5b

    .line 1331
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after ANR...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: show ANR dialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(w)ait: wait some more"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5b

    .line 1326
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after early ANR...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: standard ANR processing"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    goto :goto_5b

    .line 1321
    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after crash...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: show crash dialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    goto :goto_5b

    .line 1318
    :cond_53
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Monitoring activity manager...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    nop

    .line 1337
    :goto_5b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish monitoring"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method resumeController(I)V
    .registers 3

    .line 1308
    monitor-enter p0

    .line 1309
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1310
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mResult:I

    .line 1311
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1312
    monitor-exit p0

    .line 1313
    return-void

    .line 1312
    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw p1
.end method

.method run()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1342
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1343
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1345
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v1, p0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1346
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1348
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInput:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1349
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1352
    :goto_1f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16f

    .line 1353
    nop

    .line 1354
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_30

    .line 1355
    move v5, v1

    goto/16 :goto_146

    .line 1356
    :cond_30
    const-string/jumbo v4, "q"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15e

    const-string/jumbo v4, "quit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto/16 :goto_15e

    .line 1359
    :cond_44
    iget v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    if-ne v4, v5, :cond_8c

    .line 1360
    const-string v4, "c"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    const-string v4, "continue"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_87

    .line 1362
    :cond_59
    const-string v4, "k"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    const-string v4, "kill"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_82

    .line 1365
    :cond_6a
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_146

    .line 1363
    :cond_82
    :goto_82
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto/16 :goto_146

    .line 1361
    :cond_87
    :goto_87
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto/16 :goto_146

    .line 1367
    :cond_8c
    iget v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_ea

    .line 1368
    const-string v4, "c"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e6

    const-string v4, "continue"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    goto :goto_e6

    .line 1370
    :cond_a2
    const-string v4, "k"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e2

    const-string v4, "kill"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    goto :goto_e2

    .line 1372
    :cond_b3
    const-string/jumbo v4, "w"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_de

    const-string/jumbo v4, "wait"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    goto :goto_de

    .line 1375
    :cond_c6
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_146

    .line 1373
    :cond_de
    :goto_de
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_146

    .line 1371
    :cond_e2
    :goto_e2
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_146

    .line 1369
    :cond_e6
    :goto_e6
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_146

    .line 1377
    :cond_ea
    iget v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_130

    .line 1378
    const-string v4, "c"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12c

    const-string v4, "continue"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_100

    goto :goto_12c

    .line 1380
    :cond_100
    const-string v4, "k"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_128

    const-string v4, "kill"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    goto :goto_128

    .line 1383
    :cond_111
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_146

    .line 1381
    :cond_128
    :goto_128
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_146

    .line 1379
    :cond_12c
    :goto_12c
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_146

    .line 1386
    :cond_130
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    :goto_146
    monitor-enter p0
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_147} :catch_164
    .catchall {:try_start_1 .. :try_end_147} :catchall_162

    .line 1390
    if-eqz v5, :cond_150

    .line 1391
    :try_start_149
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    :cond_150
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1394
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1395
    monitor-exit p0

    .line 1396
    goto/16 :goto_1f

    .line 1395
    :catchall_15b
    move-exception v1

    monitor-exit p0
    :try_end_15d
    .catchall {:try_start_149 .. :try_end_15d} :catchall_15b

    :try_start_15d
    throw v1

    .line 1357
    :cond_15e
    :goto_15e
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_161} :catch_164
    .catchall {:try_start_15d .. :try_end_161} :catchall_162

    .line 1358
    goto :goto_16f

    .line 1402
    :catchall_162
    move-exception v1

    goto :goto_178

    .line 1398
    :catch_164
    move-exception v1

    .line 1399
    :try_start_165
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1400
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_16f
    .catchall {:try_start_165 .. :try_end_16f} :catchall_162

    .line 1402
    :cond_16f
    :goto_16f
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1403
    nop

    .line 1404
    return-void

    .line 1402
    :goto_178
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    throw v1
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .registers 5

    .line 1206
    monitor-enter p0

    .line 1207
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v0, "Allowing system to die."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1212
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 1213
    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw p1
.end method

.method waitControllerLocked(II)I
    .registers 8

    .line 1231
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    if-eqz v0, :cond_d7

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1235
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting gdbserver on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Do the following:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  adb forward tcp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tcp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  gdbclient app_process :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1241
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gdbserver"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "--attach"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1242
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 1241
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1244
    new-instance p1, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1245
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1246
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;Ljava/io/InputStreamReader;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    .line 1276
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b0} :catch_b8

    .line 1280
    const-wide/16 v0, 0x1f4

    :try_start_b2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_b5} :catch_b6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b8

    .line 1282
    goto :goto_b7

    .line 1281
    :catch_b6
    move-exception p1

    .line 1288
    :goto_b7
    goto :goto_d7

    .line 1284
    :catch_b8
    move-exception p1

    .line 1285
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting gdbserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1290
    :cond_d7
    :goto_d7
    iput p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1291
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1293
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1295
    :goto_e8
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    if-eqz p1, :cond_f2

    .line 1297
    :try_start_ec
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_ef
    .catch Ljava/lang/InterruptedException; {:try_start_ec .. :try_end_ef} :catch_f0

    .line 1299
    :goto_ef
    goto :goto_e8

    .line 1298
    :catch_f0
    move-exception p1

    goto :goto_ef

    .line 1302
    :cond_f2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1304
    iget p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mResult:I

    return p1
.end method
