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

.field public rvStats:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 8728
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 8729
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    .line 8730
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 8731
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .registers 9

    .line 8735
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    .line 8736
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_101

    .line 8737
    aget-object v3, p0, v2

    .line 8738
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_19

    .line 8739
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    goto/16 :goto_fe

    .line 8740
    :cond_19
    const-string v4, "--noredact"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fc

    const-string v4, "--reveal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto/16 :goto_fc

    .line 8742
    :cond_2b
    const-string/jumbo v4, "p"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_db

    const-string/jumbo v4, "pkg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_db

    const-string v4, "--package"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto/16 :goto_db

    .line 8752
    :cond_47
    const-string v4, "--zen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d6

    const-string/jumbo v4, "zen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    goto/16 :goto_d6

    .line 8755
    :cond_5a
    const-string v4, "--stats"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_7a

    .line 8756
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    .line 8757
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_76

    .line 8758
    add-int/lit8 v2, v2, 0x1

    .line 8759
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_fe

    .line 8761
    :cond_76
    iput-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_fe

    .line 8763
    :cond_7a
    const-string v4, "--remote-view-stats"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 8764
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->rvStats:Z

    .line 8765
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_94

    .line 8766
    add-int/lit8 v2, v2, 0x1

    .line 8767
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_fe

    .line 8769
    :cond_94
    iput-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_fe

    .line 8771
    :cond_98
    const-string v4, "--dump-priority"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 8775
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_fe

    .line 8776
    add-int/lit8 v2, v2, 0x1

    .line 8777
    aget-object v3, p0, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x76664f19  # -3.699977E-33f

    if-eq v6, v7, :cond_c2

    const v7, -0x5cfe9861

    if-eq v6, v7, :cond_b8

    :cond_b7
    goto :goto_cb

    :cond_b8
    const-string v6, "CRITICAL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    move v4, v1

    goto :goto_cb

    :cond_c2
    const-string v6, "NORMAL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    move v4, v5

    :goto_cb
    if-eqz v4, :cond_d3

    if-eq v4, v5, :cond_d0

    goto :goto_fe

    .line 8782
    :cond_d0
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    goto :goto_fe

    .line 8779
    :cond_d3
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 8780
    goto :goto_fe

    .line 8753
    :cond_d6
    :goto_d6
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 8754
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    goto :goto_fe

    .line 8743
    :cond_db
    :goto_db
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_fe

    .line 8744
    add-int/lit8 v2, v2, 0x1

    .line 8745
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    .line 8746
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 8747
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    goto :goto_fe

    .line 8749
    :cond_f9
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    goto :goto_fe

    .line 8741
    :cond_fc
    :goto_fc
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 8736
    :cond_fe
    :goto_fe
    add-int/2addr v2, v5

    goto/16 :goto_7

    .line 8788
    :cond_101
    return-object v0
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .registers 4

    .line 8798
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 8799
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    :goto_a
    goto :goto_19

    :cond_b
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 8792
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 8793
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    goto :goto_23

    .line 8794
    :cond_b
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_21
    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 8793
    :goto_23
    return v1
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 4

    .line 8803
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 8804
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    :goto_a
    goto :goto_1b

    :cond_b
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 8809
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
