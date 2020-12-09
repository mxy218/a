.class Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;
.super Ljava/lang/Thread;
.source "DynamicCodeLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DynamicCodeLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuditWatchingThread"
.end annotation


# instance fields
.field private final mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V
    .registers 3

    .line 173
    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    .line 174
    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 175
    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    .line 176
    return-void
.end method

.method private processAuditEvents()Z
    .registers 9

    .line 225
    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [I

    const-string v2, "auditd"

    invoke-static {v2}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 226
    aget v2, v1, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_12

    .line 229
    return v0

    .line 232
    :cond_12
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$000()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v2

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-static {v1, v4}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 237
    move v1, v3

    :goto_1f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_81

    .line 238
    iget-object v5, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-static {v5}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$300(Lcom/android/server/pm/DynamicCodeLoggingService;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 239
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping AuditWatchingJob run at scheduler request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v3

    .line 243
    :cond_37
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/EventLog$Event;

    .line 246
    invoke-virtual {v5}, Landroid/util/EventLog$Event;->getUid()I

    move-result v6

    .line 247
    invoke-static {v6}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v7

    if-nez v7, :cond_48

    .line 248
    goto :goto_7e

    .line 250
    :cond_48
    invoke-virtual {v5}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 251
    instance-of v7, v5, Ljava/lang/String;

    if-nez v7, :cond_51

    .line 252
    goto :goto_7e

    .line 254
    :cond_51
    check-cast v5, Ljava/lang/String;

    .line 255
    const-string/jumbo v7, "type=1400 "

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 256
    goto :goto_7e

    .line 261
    :cond_5d
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$400()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 262
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_6c

    .line 263
    goto :goto_7e

    .line 265
    :cond_6c
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 266
    if-nez v7, :cond_7b

    .line 269
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    :cond_7b
    invoke-virtual {v2, v6, v7}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordNative(ILjava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7e} :catch_82

    .line 237
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 274
    :cond_81
    return v0

    .line 275
    :catch_82
    move-exception v1

    .line 276
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuditWatchingJob failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    return v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 184
    invoke-direct {p0}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->processAuditEvents()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 185
    iget-object v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/DynamicCodeLoggingService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 190
    :cond_e
    return-void
.end method
