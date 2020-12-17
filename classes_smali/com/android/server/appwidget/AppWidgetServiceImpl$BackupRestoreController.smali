.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackupRestoreController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BackupRestoreController"

.field private static final WIDGET_STATE_VERSION:I = 0x2


# instance fields
.field private final mPrunedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesByHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdatesByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 4213
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4225
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    .line 4227
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 4229
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 4213
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method

.method private alreadyStashed(Ljava/util/ArrayList;II)Z
    .registers 8
    .param p2, "oldId"  # I
    .param p3, "newId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;II)Z"
        }
    .end annotation

    .line 4667
    .local p1, "stash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4668
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 4669
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4670
    .local v2, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    if-ne v3, p2, :cond_17

    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    if-ne v3, p3, :cond_17

    .line 4671
    const/4 v3, 0x1

    return v3

    .line 4668
    .end local v2  # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4674
    .end local v1  # "i":I
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private countPendingUpdates(Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;)I"
        }
    .end annotation

    .line 4789
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    const/4 v0, 0x0

    .line 4790
    .local v0, "pending":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4791
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_17

    .line 4792
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4793
    .local v3, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v4, :cond_14

    .line 4794
    add-int/lit8 v0, v0, 0x1

    .line 4791
    .end local v3  # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4797
    .end local v2  # "i":I
    :cond_17
    return v0
.end method

.method private findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 4587
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4588
    .local v0, "providerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_2d

    .line 4589
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4590
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_2a

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 4591
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4592
    return-object v2

    .line 4588
    .end local v2  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4595
    .end local v1  # "i":I
    :cond_2d
    const/4 v1, 0x0

    return-object v1
.end method

.method private findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 11
    .param p1, "restoredId"  # I
    .param p2, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p3, "p"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Find restored widget: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    const/4 v0, 0x0

    if-eqz p3, :cond_82

    if-nez p2, :cond_2c

    goto :goto_82

    .line 4608
    :cond_2c
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4609
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    if-ge v3, v2, :cond_81

    .line 4610
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4611
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    if-ne v5, p1, :cond_7e

    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v6, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 4612
    invoke-virtual {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4613
    invoke-virtual {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 4615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Found at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    return-object v4

    .line 4609
    .end local v4  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 4620
    .end local v3  # "i":I
    :cond_81
    return-object v0

    .line 4605
    .end local v2  # "N":I
    :cond_82
    :goto_82
    return-object v0
.end method

.method private isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z
    .registers 4
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "userId"  # I

    .line 4754
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4755
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4754
    :goto_17
    return v0
.end method

.method private packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4624
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4625
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_38

    .line 4626
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4629
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v3

    if-nez v3, :cond_20

    .line 4630
    goto :goto_35

    .line 4633
    :cond_20
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2a

    .line 4635
    return v4

    .line 4638
    :cond_2a
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4639
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_35

    invoke-virtual {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 4641
    return v4

    .line 4625
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4644
    .end local v1  # "i":I
    :cond_38
    const/4 v1, 0x0

    return v1
.end method

.method private parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 11
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;

    .line 4759
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4760
    .local v0, "options":Landroid/os/Bundle;
    const/4 v1, 0x0

    const-string/jumbo v2, "min_width"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4761
    .local v2, "minWidthString":Ljava/lang/String;
    const/16 v3, 0x10

    if-eqz v2, :cond_1b

    .line 4762
    nop

    .line 4763
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 4762
    const-string v5, "appWidgetMinWidth"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4765
    :cond_1b
    const-string/jumbo v4, "min_height"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4766
    .local v4, "minHeightString":Ljava/lang/String;
    if-eqz v4, :cond_2e

    .line 4767
    nop

    .line 4768
    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4767
    const-string v6, "appWidgetMinHeight"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4770
    :cond_2e
    const-string/jumbo v5, "max_width"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4771
    .local v5, "maxWidthString":Ljava/lang/String;
    if-eqz v5, :cond_41

    .line 4772
    nop

    .line 4773
    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 4772
    const-string v7, "appWidgetMaxWidth"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4775
    :cond_41
    const-string/jumbo v6, "max_height"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4776
    .local v6, "maxHeightString":Ljava/lang/String;
    if-eqz v6, :cond_54

    .line 4777
    nop

    .line 4778
    invoke-static {v6, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 4777
    const-string v8, "appWidgetMaxHeight"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4780
    :cond_54
    const-string v7, "host_category"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4781
    .local v1, "categoryString":Ljava/lang/String;
    if-eqz v1, :cond_66

    .line 4782
    nop

    .line 4783
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 4782
    const-string v7, "appWidgetCategory"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4785
    :cond_66
    return-object v0
.end method

.method private pruneWidgetStateLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4716
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupRestoreController"

    if-nez v0, :cond_6a

    .line 4718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruning widget state for restoring package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4720
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2b
    if-ltz v0, :cond_64

    .line 4721
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4723
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4724
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4726
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-static {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4b

    if-eqz v3, :cond_61

    .line 4727
    invoke-virtual {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 4731
    :cond_4b
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4734
    if-eqz v3, :cond_57

    .line 4735
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4740
    :cond_57
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4741
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v4, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4720
    .end local v1  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v2  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 4744
    .end local v0  # "i":I
    :cond_64
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 4747
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already pruned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", continuing normally"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    :goto_83
    return-void
.end method

.method private sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V
    .registers 10
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p4, "oldIds"  # [I
    .param p5, "newIds"  # [I
    .param p6, "userHandle"  # Landroid/os/UserHandle;

    .line 4696
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4697
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetOldIds"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4698
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4699
    if-eqz p2, :cond_1d

    .line 4700
    iget-object v1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4701
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4703
    :cond_1d
    if-eqz p3, :cond_38

    .line 4704
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4705
    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4706
    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    const-string v2, "hostId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4707
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4709
    :cond_38
    return-void
.end method

.method private stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V
    .registers 7
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "oldId"  # I
    .param p3, "newId"  # I

    .line 4678
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4679
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_16

    .line 4680
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4681
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 4683
    :cond_16
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID remap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already stashed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestoreController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    return-void

    .line 4691
    :cond_43
    :goto_43
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4692
    return-void
.end method

.method private stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V
    .registers 7
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "oldId"  # I
    .param p3, "newId"  # I

    .line 4648
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4649
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_16

    .line 4650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4651
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 4654
    :cond_16
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID remap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already stashed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestoreController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    return-void

    .line 4662
    :cond_43
    :goto_43
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4663
    return-void
.end method


# virtual methods
.method public getWidgetParticipants(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting widget participants for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4238
    .local v0, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4239
    :try_start_22
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4240
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    if-ge v3, v2, :cond_5d

    .line 4241
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4244
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v5

    if-nez v5, :cond_42

    .line 4245
    goto :goto_5a

    .line 4248
    :cond_42
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4249
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4250
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v5, :cond_5a

    .line 4251
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4240
    .end local v4  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v5  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 4254
    .end local v2  # "N":I
    .end local v3  # "i":I
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_22 .. :try_end_5e} :catchall_64

    .line 4255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 4254
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 13
    .param p1, "backedupPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 4260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting widget state for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4264
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4267
    :try_start_22
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    .line 4268
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_122

    return-object v3

    .line 4272
    :cond_2b
    :try_start_2b
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4273
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4274
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4275
    const-string/jumbo v4, "ws"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4276
    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4277
    const-string/jumbo v4, "pkg"

    invoke-interface {v2, v3, v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4282
    const/4 v4, 0x0

    .line 4283
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4284
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_64
    if-ge v6, v5, :cond_8e

    .line 4285
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4287
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 4288
    invoke-virtual {v7, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_84

    .line 4289
    invoke-virtual {v7, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->hostedByPackageForUser(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 4290
    :cond_84
    iput v4, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 4291
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3300(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 4292
    add-int/lit8 v4, v4, 0x1

    .line 4284
    .end local v7  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_8b
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 4296
    .end local v6  # "i":I
    :cond_8e
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    .line 4297
    const/4 v4, 0x0

    .line 4298
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_9b
    if-ge v6, v5, :cond_c7

    .line 4299
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4301
    .local v7, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c4

    .line 4302
    invoke-virtual {v7, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_bd

    .line 4303
    invoke-static {v7, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 4304
    :cond_bd
    iput v4, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 4305
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3600(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 4306
    add-int/lit8 v4, v4, 0x1

    .line 4298
    .end local v7  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_c4
    add-int/lit8 v6, v6, 0x1

    goto :goto_9b

    .line 4312
    .end local v6  # "i":I
    :cond_c7
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    .line 4313
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_d3
    if-ge v6, v5, :cond_f9

    .line 4314
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4316
    .local v7, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4317
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_f3

    if-eqz v8, :cond_f6

    .line 4319
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_f6

    .line 4320
    :cond_f3
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3700(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4313
    .end local v7  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v8  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_f6
    add-int/lit8 v6, v6, 0x1

    goto :goto_d3

    .line 4324
    .end local v6  # "i":I
    :cond_f9
    const-string/jumbo v6, "ws"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4325
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_102} :catch_109
    .catchall {:try_start_2b .. :try_end_102} :catchall_122

    .line 4329
    .end local v2  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4  # "index":I
    .end local v5  # "N":I
    nop

    .line 4330
    :try_start_103
    monitor-exit v1
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_122

    .line 4332
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 4326
    :catch_109
    move-exception v2

    .line 4327
    .local v2, "e":Ljava/io/IOException;
    :try_start_10a
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save widget state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    monitor-exit v1

    return-object v3

    .line 4330
    .end local v2  # "e":Ljava/io/IOException;
    :catchall_122
    move-exception v2

    monitor-exit v1
    :try_end_124
    .catchall {:try_start_10a .. :try_end_124} :catchall_122

    throw v2
.end method

.method public restoreFinished(I)V
    .registers 24
    .param p1, "userId"  # I

    .line 4510
    move-object/from16 v15, p0

    move/from16 v14, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreFinished for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 4514
    .local v7, "userHandle":Landroid/os/UserHandle;
    iget-object v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 4516
    :try_start_27
    iget-object v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 4517
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4518
    .local v0, "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v9, v1

    .line 4520
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object v10, v1

    .line 4521
    .local v10, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object v11, v1

    .line 4522
    .local v11, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v15, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v1

    move v12, v1

    .line 4524
    .local v12, "pending":I
    const-string v1, "BackupRestoreController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pending: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    if-lez v12, :cond_ce

    .line 4527
    new-array v1, v12, [I

    move-object v13, v1

    .line 4528
    .local v13, "oldIds":[I
    new-array v1, v12, [I

    move-object/from16 v17, v1

    .line 4529
    .local v17, "newIds":[I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v1

    .line 4530
    .local v6, "N":I
    const/4 v1, 0x0

    .line 4531
    .local v1, "nextPending":I
    const/4 v3, 0x0

    move/from16 v18, v1

    .end local v1  # "nextPending":I
    .local v3, "i":I
    .local v18, "nextPending":I
    :goto_82
    if-ge v3, v6, :cond_c0

    .line 4532
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4533
    .local v1, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v4, :cond_bc

    .line 4534
    iput-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 4535
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v4, v13, v18

    .line 4536
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v4, v17, v18

    .line 4537
    add-int/lit8 v18, v18, 0x1

    .line 4539
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    .end local v1  # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_bc
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    goto :goto_82

    .line 4543
    .end local v3  # "i":I
    :cond_c0
    const-string v2, "android.appwidget.action.APPWIDGET_RESTORED"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v3, v10

    move-object v5, v13

    move/from16 v19, v6

    .end local v6  # "N":I
    .local v19, "N":I
    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    .line 4547
    .end local v9  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v10  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11  # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    .end local v12  # "pending":I
    .end local v13  # "oldIds":[I
    .end local v17  # "newIds":[I
    .end local v18  # "nextPending":I
    .end local v19  # "N":I
    :cond_ce
    goto/16 :goto_31

    .line 4550
    :cond_d0
    iget-object v1, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    .line 4551
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4552
    .local v1, "hostEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_188

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4553
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4554
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_182

    .line 4555
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4556
    .local v5, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v15, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v6

    .line 4558
    .local v6, "pending":I
    const-string v8, "BackupRestoreController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Host "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " pending: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    if-lez v6, :cond_17f

    .line 4561
    new-array v8, v6, [I

    move-object/from16 v17, v8

    .line 4562
    .local v17, "oldIds":[I
    new-array v8, v6, [I

    move-object/from16 v18, v8

    .line 4563
    .local v18, "newIds":[I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v13, v8

    .line 4564
    .local v13, "N":I
    const/4 v8, 0x0

    .line 4565
    .local v8, "nextPending":I
    const/4 v9, 0x0

    move/from16 v20, v8

    .end local v8  # "nextPending":I
    .local v9, "i":I
    .local v20, "nextPending":I
    :goto_12e
    if-ge v9, v13, :cond_16c

    .line 4566
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4567
    .local v8, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v10, :cond_169

    .line 4568
    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 4569
    iget v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v10, v17, v20

    .line 4570
    iget v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v10, v18, v20

    .line 4571
    add-int/lit8 v20, v20, 0x1

    .line 4573
    const-string v10, "BackupRestoreController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    .end local v8  # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_169
    add-int/lit8 v9, v9, 0x1

    goto :goto_12e

    .line 4577
    .end local v9  # "i":I
    :cond_16c
    const-string v9, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v11, v4

    const/16 v19, 0x1

    move-object/from16 v12, v17

    move/from16 v21, v13

    .end local v13  # "N":I
    .local v21, "N":I
    move-object/from16 v13, v18

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    goto :goto_184

    .line 4560
    .end local v17  # "oldIds":[I
    .end local v18  # "newIds":[I
    .end local v20  # "nextPending":I
    .end local v21  # "N":I
    :cond_17f
    const/16 v19, 0x1

    goto :goto_184

    .line 4554
    .end local v5  # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    .end local v6  # "pending":I
    :cond_182
    const/16 v19, 0x1

    .line 4582
    .end local v3  # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v4  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :goto_184
    move/from16 v14, p1

    goto/16 :goto_da

    .line 4583
    .end local v0  # "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    .end local v1  # "hostEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    :cond_188
    monitor-exit v16

    .line 4584
    return-void

    .line 4583
    :catchall_18a
    move-exception v0

    monitor-exit v16
    :try_end_18c
    .catchall {:try_start_27 .. :try_end_18c} :catchall_18a

    throw v0
.end method

.method public restoreStarting(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 4337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore starting for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4344
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 4345
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4346
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4347
    monitor-exit v0

    .line 4348
    return-void

    .line 4347
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 24
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "restoredState"  # [B
    .param p3, "userId"  # I

    .line 4352
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring widget state for user:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BackupRestoreController"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v0

    .line 4359
    .local v5, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_2c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 4362
    .local v6, "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 4364
    .local v7, "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v8, v0

    .line 4365
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4367
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_4d} :catch_2de
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4d} :catch_2de
    .catchall {:try_start_2c .. :try_end_4d} :catchall_2da

    .line 4370
    :goto_4d
    :try_start_4d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 4371
    .local v0, "type":I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_2b8

    .line 4372
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 4373
    .local v12, "tag":Ljava/lang/String;
    const-string/jumbo v13, "ws"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_2cd

    const/4 v14, 0x0

    if-eqz v13, :cond_b8

    .line 4374
    :try_start_62
    const-string/jumbo v13, "version"

    invoke-interface {v8, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4376
    .local v13, "version":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 4377
    .local v15, "versionNumber":I
    if-le v15, v11, :cond_8c

    .line 4378
    const-string v10, "BackupRestoreController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to process state version "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    monitor-exit v9
    :try_end_86
    .catchall {:try_start_62 .. :try_end_86} :catchall_af

    .line 4501
    iget-object v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v9, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4379
    return-void

    .line 4383
    :cond_8c
    :try_start_8c
    const-string/jumbo v11, "pkg"

    invoke-interface {v8, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4384
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a7

    .line 4385
    const-string v10, "BackupRestoreController"

    const-string v14, "Package mismatch in ws"

    invoke-static {v10, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    monitor-exit v9
    :try_end_a1
    .catchall {:try_start_8c .. :try_end_a1} :catchall_af

    .line 4501
    iget-object v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v9, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4386
    return-void

    .line 4388
    .end local v11  # "pkg":Ljava/lang/String;
    .end local v13  # "version":Ljava/lang/String;
    .end local v15  # "versionNumber":I
    :cond_a7
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    goto/16 :goto_2be

    .line 4497
    .end local v0  # "type":I
    .end local v12  # "tag":Ljava/lang/String;
    :catchall_af
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    goto/16 :goto_2d4

    .line 4388
    .restart local v0  # "type":I
    .restart local v12  # "tag":Ljava/lang/String;
    :cond_b8
    :try_start_b8
    const-string/jumbo v11, "p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_2cd

    if-eqz v11, :cond_12f

    .line 4389
    :try_start_c1
    const-string/jumbo v11, "pkg"

    invoke-interface {v8, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4390
    .restart local v11  # "pkg":Ljava/lang/String;
    const-string v13, "cl"

    invoke-interface {v8, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4398
    .local v13, "cl":Ljava/lang/String;
    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v11, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4400
    .local v15, "componentName":Landroid/content/ComponentName;
    invoke-direct {v1, v15, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v16

    .line 4401
    .local v16, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v16, :cond_101

    .line 4402
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v10, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 4403
    .end local v16  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v10, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :try_end_e0
    .catchall {:try_start_c1 .. :try_end_e0} :catchall_126

    const/4 v4, -0x1

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .local v18, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_e4
    invoke-direct {v14, v4, v15, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v14, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4404
    new-instance v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v4}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4405
    iget-object v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v15, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4406
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 4407
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_105

    .line 4401
    .end local v10  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v16  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_101
    move-object/from16 v18, v5

    .end local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v18  # "stream":Ljava/io/ByteArrayInputStream;
    move-object/from16 v10, v16

    .line 4410
    .end local v16  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v10  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_105
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   provider "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_120
    .catchall {:try_start_e4 .. :try_end_120} :catchall_195

    .line 4413
    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v10  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11  # "pkg":Ljava/lang/String;
    .end local v13  # "cl":Ljava/lang/String;
    .end local v15  # "componentName":Landroid/content/ComponentName;
    goto/16 :goto_2be

    .line 4497
    .end local v0  # "type":I
    .end local v12  # "tag":Ljava/lang/String;
    .end local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5  # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_126
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v18  # "stream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_2d4

    .line 4413
    .end local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v0  # "type":I
    .restart local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v12  # "tag":Ljava/lang/String;
    :cond_12f
    move-object/from16 v18, v5

    .end local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v18  # "stream":Ljava/io/ByteArrayInputStream;
    :try_start_131
    const-string v4, "h"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_137
    .catchall {:try_start_131 .. :try_end_137} :catchall_2b2

    const/16 v5, 0x10

    if-eqz v4, :cond_19c

    .line 4417
    :try_start_13b
    const-string/jumbo v4, "pkg"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4419
    .local v4, "pkg":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v10, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v10

    .line 4420
    .local v10, "uid":I
    const-string/jumbo v11, "id"

    .line 4421
    const/4 v13, 0x0

    invoke-interface {v8, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4420
    invoke-static {v11, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4423
    .local v5, "hostId":I
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v11, v10, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 4424
    .local v11, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iget-object v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v13, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v13

    .line 4425
    .local v13, "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4428
    const-string v14, "BackupRestoreController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .end local v4  # "pkg":Ljava/lang/String;
    .local v16, "pkg":Ljava/lang/String;
    const-string v4, "   host["

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: {"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18f
    .catchall {:try_start_13b .. :try_end_18f} :catchall_195

    .line 4431
    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v5  # "hostId":I
    .end local v10  # "uid":I
    .end local v11  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v13  # "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v16  # "pkg":Ljava/lang/String;
    goto/16 :goto_2be

    .line 4497
    .end local v0  # "type":I
    .end local v12  # "tag":Ljava/lang/String;
    :catchall_195
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    goto/16 :goto_2d4

    .line 4431
    .restart local v0  # "type":I
    .restart local v12  # "tag":Ljava/lang/String;
    :cond_19c
    :try_start_19c
    const-string v4, "g"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ad

    .line 4432
    const-string/jumbo v4, "id"

    .line 4433
    const/4 v10, 0x0

    invoke-interface {v8, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4432
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 4434
    .local v4, "restoredId":I
    const-string v10, "h"

    .line 4435
    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4434
    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 4436
    .local v10, "hostIndex":I
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4437
    .local v11, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v13, 0x0

    .line 4438
    .local v13, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const-string/jumbo v14, "p"

    const/4 v15, 0x0

    invoke-interface {v8, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1ca
    .catchall {:try_start_19c .. :try_end_1ca} :catchall_2b2

    .line 4439
    .local v14, "prov":Ljava/lang/String;
    if-eqz v14, :cond_1d7

    .line 4442
    :try_start_1cc
    invoke-static {v14, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4443
    .local v5, "which":I
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_1d6
    .catchall {:try_start_1cc .. :try_end_1d6} :catchall_195

    move-object v13, v15

    .line 4449
    .end local v5  # "which":I
    :cond_1d7
    :try_start_1d7
    iget-object v5, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {v1, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V
    :try_end_1de
    .catchall {:try_start_1d7 .. :try_end_1de} :catchall_2b2

    .line 4450
    if-eqz v13, :cond_1eb

    .line 4451
    :try_start_1e0
    iget-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V
    :try_end_1eb
    .catchall {:try_start_1e0 .. :try_end_1eb} :catchall_195

    .line 4456
    :cond_1eb
    :try_start_1eb
    invoke-direct {v1, v4, v11, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 4457
    .local v5, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v5, :cond_24d

    .line 4458
    new-instance v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-object/from16 v16, v5

    const/4 v5, 0x0

    .end local v5  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v16, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {v15, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v5, v15

    .line 4459
    .end local v16  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v5  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v15, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v15, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I

    move-result v15

    iput v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 4460
    iput v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 4461
    invoke-direct {v1, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v15

    iput-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 4462
    iput-object v11, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4463
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4464
    iput-object v13, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4465
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_217
    .catchall {:try_start_1eb .. :try_end_217} :catchall_2b2

    if-eqz v15, :cond_220

    .line 4466
    :try_start_219
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_220
    .catchall {:try_start_219 .. :try_end_220} :catchall_195

    .line 4469
    :cond_220
    :try_start_220
    const-string v15, "BackupRestoreController"
    :try_end_222
    .catchall {:try_start_220 .. :try_end_222} :catchall_2b2

    move-object/from16 v17, v6

    .end local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .local v17, "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    :try_start_224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_229
    .catchall {:try_start_224 .. :try_end_229} :catchall_248

    move-object/from16 v19, v7

    .end local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .local v19, "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :try_start_22b
    const-string v7, "New restored id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v6, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_253

    .line 4497
    .end local v0  # "type":I
    .end local v4  # "restoredId":I
    .end local v5  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v10  # "hostIndex":I
    .end local v11  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v12  # "tag":Ljava/lang/String;
    .end local v13  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14  # "prov":Ljava/lang/String;
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_248
    move-exception v0

    move-object/from16 v19, v7

    .end local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto/16 :goto_2d4

    .line 4457
    .end local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v0  # "type":I
    .restart local v4  # "restoredId":I
    .restart local v5  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v10  # "hostIndex":I
    .restart local v11  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .restart local v12  # "tag":Ljava/lang/String;
    .restart local v13  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v14  # "prov":Ljava/lang/String;
    :cond_24d
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .line 4474
    .end local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_253
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_265

    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_265

    .line 4475
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-direct {v1, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V

    goto :goto_27b

    .line 4478
    :cond_265
    const-string v6, "BackupRestoreController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing provider for restored widget "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    :goto_27b
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-direct {v1, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V

    .line 4483
    const-string v6, "BackupRestoreController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "   instance: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " -> "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " :: p="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2be

    .line 4431
    .end local v4  # "restoredId":I
    .end local v5  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v10  # "hostIndex":I
    .end local v11  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v13  # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14  # "prov":Ljava/lang/String;
    .end local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :cond_2ad
    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto :goto_2be

    .line 4497
    .end local v0  # "type":I
    .end local v12  # "tag":Ljava/lang/String;
    .end local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_2b2
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto :goto_2d4

    .line 4371
    .end local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v0  # "type":I
    .local v5, "stream":Ljava/io/ByteArrayInputStream;
    .restart local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :cond_2b8
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .line 4489
    .end local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .end local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_2be
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2c3

    .line 4497
    .end local v0  # "type":I
    monitor-exit v9

    .line 4501
    .end local v8  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto :goto_2f8

    .line 4489
    .restart local v0  # "type":I
    .restart local v8  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :cond_2c3
    move-object/from16 v4, p2

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    goto/16 :goto_4d

    .line 4497
    .end local v0  # "type":I
    .end local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_2cd
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .end local v6  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_2d4
    monitor-exit v9
    :try_end_2d5
    .catchall {:try_start_22b .. :try_end_2d5} :catchall_2d8

    .end local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "restoredState":[B
    .end local p3  # "userId":I
    :try_start_2d5
    throw v0
    :try_end_2d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d5 .. :try_end_2d6} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_2d5 .. :try_end_2d6} :catch_2d6
    .catchall {:try_start_2d5 .. :try_end_2d6} :catchall_2ff

    .line 4498
    .end local v8  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "restoredState":[B
    .restart local p3  # "userId":I
    :catch_2d6
    move-exception v0

    goto :goto_2e1

    .line 4497
    .restart local v8  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_2d8
    move-exception v0

    goto :goto_2d4

    .line 4501
    .end local v8  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17  # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .end local v19  # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v5  # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_2da
    move-exception v0

    move-object/from16 v18, v5

    .end local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v18  # "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_300

    .line 4498
    .end local v18  # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5  # "stream":Ljava/io/ByteArrayInputStream;
    :catch_2de
    move-exception v0

    move-object/from16 v18, v5

    .line 4499
    .end local v5  # "stream":Ljava/io/ByteArrayInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18  # "stream":Ljava/io/ByteArrayInputStream;
    :goto_2e1
    :try_start_2e1
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to restore widget state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f7
    .catchall {:try_start_2e1 .. :try_end_2f7} :catchall_2ff

    .line 4501
    nop

    .end local v0  # "e":Ljava/lang/Exception;
    :goto_2f8
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4502
    nop

    .line 4503
    return-void

    .line 4501
    :catchall_2ff
    move-exception v0

    :goto_300
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    throw v0
.end method
