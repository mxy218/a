.class Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 2563
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V
    .registers 3

    .line 2563
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ShortcutService.this.mLock"
        }
    .end annotation

    .line 2683
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2684
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2686
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2687
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2689
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p5

    .line 2690
    invoke-virtual {p5, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 2691
    const/4 p3, 0x0

    if-nez v0, :cond_24

    .line 2692
    return-object p3

    .line 2695
    :cond_24
    new-instance p5, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2696
    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;

    invoke-direct {v2, p4}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, p5

    move-object v4, p2

    move v5, p1

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 2699
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_46

    :cond_3e
    const/4 p1, 0x0

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/content/pm/ShortcutInfo;

    :goto_46
    return-object p3
.end method

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .registers 28
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ShortcutService.this.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;III)V"
        }
    .end annotation

    .line 2612
    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    if-nez v1, :cond_a

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_10

    .line 2613
    :cond_a
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v7, v3

    .line 2615
    :goto_10
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2616
    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2617
    if-nez v1, :cond_21

    .line 2618
    return-void

    .line 2620
    :cond_21
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_29

    move v9, v5

    goto :goto_2a

    :cond_29
    move v9, v4

    .line 2621
    :goto_2a
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_30

    move v10, v5

    goto :goto_31

    :cond_30
    move v10, v4

    .line 2622
    :goto_31
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_37

    move v12, v5

    goto :goto_38

    :cond_37
    move v12, v4

    .line 2624
    :goto_38
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2625
    move v3, p1

    move-object/from16 v13, p2

    move/from16 v6, p12

    move/from16 v8, p13

    invoke-virtual {v0, v13, p1, v6, v8}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    .line 2627
    if-eqz v0, :cond_4d

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_4d

    move v0, v5

    goto :goto_4e

    :cond_4d
    move v0, v4

    .line 2631
    :goto_4e
    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;

    move-object v4, v2

    move-wide/from16 v5, p5

    move-object/from16 v8, p7

    move v11, v0

    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;-><init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;ZZZZ)V

    move-object/from16 p3, v1

    move-object/from16 p4, p10

    move-object/from16 p5, v2

    move/from16 p6, p11

    move-object/from16 p7, p2

    move/from16 p8, p1

    move/from16 p9, v0

    invoke-virtual/range {p3 .. p9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 2656
    return-void
.end method

.method static synthetic lambda$getShortcutInfoLocked$2(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    .line 2697
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getShortcutsInnerLocked$1(JLandroid/util/ArraySet;Landroid/content/ComponentName;ZZZZLandroid/content/pm/ShortcutInfo;)Z
    .registers 11

    .line 2633
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    cmp-long p0, v0, p0

    const/4 p1, 0x0

    if-gez p0, :cond_a

    .line 2634
    return p1

    .line 2636
    :cond_a
    if-eqz p2, :cond_17

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    .line 2637
    return p1

    .line 2639
    :cond_17
    if-eqz p3, :cond_2a

    .line 2640
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 2641
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    .line 2642
    return p1

    .line 2645
    :cond_2a
    const/4 p0, 0x1

    if-eqz p4, :cond_34

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 2646
    return p0

    .line 2648
    :cond_34
    if-nez p5, :cond_38

    if-eqz p6, :cond_3f

    :cond_38
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 2649
    return p0

    .line 2651
    :cond_3f
    if-eqz p7, :cond_48

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p2

    if-eqz p2, :cond_48

    .line 2652
    return p0

    .line 2654
    :cond_48
    return p1
.end method


# virtual methods
.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .registers 4

    .line 2760
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2761
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$400(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    monitor-exit v0

    .line 2763
    return-void

    .line 2762
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;
    .registers 19

    .line 2731
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v8, p4

    move/from16 v6, p5

    const-string/jumbo v1, "packageName can\'t be empty"

    move-object v4, p3

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2732
    const-string/jumbo v1, "shortcutId can\'t be empty"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2734
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2735
    :try_start_1a
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2736
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2738
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, v6, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2739
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2741
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2742
    move/from16 v5, p6

    move/from16 v7, p7

    invoke-virtual {v1, p2, p1, v5, v7}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v10

    .line 2746
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 2750
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v1

    if-nez v1, :cond_54

    if-nez v10, :cond_54

    goto :goto_5a

    .line 2754
    :cond_54
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 2751
    :cond_5a
    :goto_5a
    const-string v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist or disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const/4 v0, 0x0

    monitor-exit v9

    return-object v0

    .line 2755
    :catchall_78
    move-exception v0

    monitor-exit v9
    :try_end_7a
    .catchall {:try_start_1a .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 2795
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2796
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2800
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2801
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2803
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    .line 2804
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2806
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1

    .line 2807
    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2808
    const/4 p2, 0x0

    if-nez p1, :cond_3a

    .line 2809
    monitor-exit v0

    return-object p2

    .line 2812
    :cond_3a
    invoke-virtual {p1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 2813
    if-eqz p1, :cond_83

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result p3

    if-nez p3, :cond_47

    goto :goto_83

    .line 2816
    :cond_47
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p3}, Lcom/android/server/pm/ShortcutService;->access$500(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/pm/ShortcutBitmapSaver;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p1

    .line 2817
    if-nez p1, :cond_5d

    .line 2818
    const-string p1, "ShortcutService"

    const-string/jumbo p3, "null bitmap detected in getShortcutIconFd()"

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_18 .. :try_end_5c} :catchall_85

    return-object p2

    .line 2822
    :cond_5d
    :try_start_5d
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x10000000

    invoke-static {p3, p4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_68} :catch_6a
    .catchall {:try_start_5d .. :try_end_68} :catchall_85

    :try_start_68
    monitor-exit v0

    return-object p1

    .line 2825
    :catch_6a
    move-exception p3

    .line 2826
    const-string p3, "ShortcutService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Icon file not found: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    monitor-exit v0

    return-object p2

    .line 2814
    :cond_83
    :goto_83
    monitor-exit v0

    return-object p2

    .line 2829
    :catchall_85
    move-exception p1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_68 .. :try_end_87} :catchall_85

    throw p1
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    .line 2768
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2772
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2773
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2774
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2776
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    .line 2777
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2779
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1

    .line 2780
    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 2781
    const/4 p2, 0x0

    if-nez p1, :cond_3a

    .line 2782
    monitor-exit v0

    return p2

    .line 2785
    :cond_3a
    invoke-virtual {p1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 2786
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result p3

    if-eqz p3, :cond_4b

    .line 2787
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result p2

    goto :goto_4c

    :cond_4b
    nop

    :goto_4c
    monitor-exit v0

    .line 2786
    return p2

    .line 2788
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2571
    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v10, p9

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2573
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 2575
    :goto_12
    if-eqz v1, :cond_17

    const/4 v1, 0x4

    move v12, v1

    goto :goto_1a

    .line 2576
    :cond_17
    const/16 v1, 0x1b

    move v12, v1

    .line 2577
    :goto_1a
    if-nez p5, :cond_1f

    .line 2578
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_21

    .line 2577
    :cond_1f
    move-object/from16 v5, p6

    .line 2581
    :goto_21
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 2582
    :try_start_28
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2583
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2585
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v10, v3}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2586
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2588
    if-eqz p5, :cond_5a

    .line 2589
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v6, p3

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v11, v15

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    move-object/from16 v17, v15

    goto :goto_81

    .line 2594
    :cond_5a
    nop

    .line 2595
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v14

    new-instance v13, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v11, v15

    move-object/from16 v17, v15

    move-object v15, v13

    move/from16 v13, p10

    move-object v0, v14

    move/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    invoke-virtual {v0, v15}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2602
    :goto_81
    monitor-exit v16
    :try_end_82
    .catchall {:try_start_28 .. :try_end_82} :catchall_8d

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->access$300(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2602
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v16
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;II)Z
    .registers 6

    .line 2835
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;III)Z

    move-result p1

    return p1
.end method

.method public isForegroundDefaultLauncher(Ljava/lang/String;I)Z
    .registers 5

    .line 2860
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2863
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2864
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 2865
    return v1

    .line 2867
    :cond_11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 2868
    return v1

    .line 2870
    :cond_1c
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2871
    :try_start_23
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 2872
    monitor-exit p1

    return v1

    .line 2874
    :cond_2d
    monitor-exit p1

    .line 2875
    const/4 p1, 0x1

    return p1

    .line 2874
    :catchall_30
    move-exception p2

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw p2
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15

    .line 2661
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2662
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2664
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2665
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2666
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2668
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2669
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2671
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 2674
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    monitor-exit v0

    return p1

    .line 2675
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 4

    .line 2855
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isRequestPinItemSupported(II)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$getShortcuts$0$ShortcutService$LocalService(ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V
    .registers 28

    .line 2596
    nop

    .line 2597
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2596
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    .line 2600
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2707
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2708
    const-string/jumbo v0, "shortcutIds"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2711
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2712
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2714
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2715
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p1

    .line 2716
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2718
    const/4 p2, 0x0

    invoke-virtual {p1, p5, p3, p4, p2}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    .line 2719
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_36

    .line 2720
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, p3, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2722
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2723
    return-void

    .line 2719
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z
    .registers 13

    .line 2849
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService;->access$600(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result p1

    return p1
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 2842
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2843
    return-void
.end method
