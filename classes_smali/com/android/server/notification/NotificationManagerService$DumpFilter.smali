.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public criticalPriority:Z

.field public filtered:Z

.field public normalPriority:Z

.field public pkgFilter:Ljava/lang/String;

.field public proto:Z

.field public redact:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 8857
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 8858
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    .line 8859
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 8860
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .registers 10
    .param p0, "args"  # [Ljava/lang/String;

    .line 8864
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    .line 8865
    .local v0, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    const/4 v1, 0x0

    .local v1, "ai":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_e3

    .line 8866
    aget-object v2, p0, v1

    .line 8867
    .local v2, "a":Ljava/lang/String;
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    .line 8868
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    goto/16 :goto_e0

    .line 8869
    :cond_18
    const-string v3, "--noredact"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_de

    const-string v3, "--reveal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto/16 :goto_de

    .line 8871
    :cond_2b
    const-string/jumbo v3, "p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bd

    const-string/jumbo v3, "pkg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bd

    const-string v3, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    goto/16 :goto_bd

    .line 8881
    :cond_47
    const-string v3, "--zen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    const-string/jumbo v3, "zen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_b8

    .line 8884
    :cond_59
    const-string v3, "--stats"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 8885
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    .line 8886
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_73

    .line 8887
    add-int/lit8 v1, v1, 0x1

    .line 8888
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_e0

    .line 8890
    :cond_73
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_e0

    .line 8892
    :cond_79
    const-string v3, "--dump-priority"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 8896
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_e0

    .line 8897
    add-int/lit8 v1, v1, 0x1

    .line 8898
    aget-object v3, p0, v1

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x76664f19  # -3.699977E-33f

    if-eq v7, v8, :cond_a2

    const v8, -0x5cfe9861

    if-eq v7, v8, :cond_99

    :cond_98
    goto :goto_ac

    :cond_99
    const-string v7, "CRITICAL"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    goto :goto_ad

    :cond_a2
    const-string v5, "NORMAL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    move v5, v4

    goto :goto_ad

    :goto_ac
    move v5, v6

    :goto_ad
    if-eqz v5, :cond_b5

    if-eq v5, v4, :cond_b2

    goto :goto_e0

    .line 8903
    :cond_b2
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    goto :goto_e0

    .line 8900
    :cond_b5
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 8901
    goto :goto_e0

    .line 8882
    :cond_b8
    :goto_b8
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 8883
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    goto :goto_e0

    .line 8872
    :cond_bd
    :goto_bd
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_e0

    .line 8873
    add-int/lit8 v1, v1, 0x1

    .line 8874
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    .line 8875
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 8876
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    goto :goto_e0

    .line 8878
    :cond_db
    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    goto :goto_e0

    .line 8870
    :cond_de
    :goto_de
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 8865
    .end local v2  # "a":Ljava/lang/String;
    :cond_e0
    :goto_e0
    add-int/2addr v1, v4

    goto/16 :goto_6

    .line 8909
    .end local v1  # "ai":I
    :cond_e3
    return-object v0
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 8919
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 8920
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    :goto_a
    goto :goto_19

    :cond_b
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;

    .line 8913
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 8914
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    goto :goto_23

    .line 8915
    :cond_b
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 8914
    :goto_23
    return v1
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 8924
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 8925
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    :goto_a
    goto :goto_1b

    :cond_b
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 8930
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "stats"

    goto :goto_26

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "zen"

    goto :goto_26

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0
.end method
