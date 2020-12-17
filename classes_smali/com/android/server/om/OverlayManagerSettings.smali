.class final Lcom/android/server/om/OverlayManagerSettings;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerSettings$BadKeyException;,
        Lcom/android/server/om/OverlayManagerSettings$SettingsItem;,
        Lcom/android/server/om/OverlayManagerSettings$Serializer;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private dumpSettingsItem(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 5
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "item"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPackageName...........: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserId................: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTargetPackageName.....: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTargetOverlayableName.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseCodePath..........: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState.................: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    invoke-static {v1}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsEnabled.............: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsStatic..............: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPriority..............: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCategory..............: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 328
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private dumpSettingsItemField(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "item"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p3, "field"  # Ljava/lang/String;

    .line 333
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_d2

    :cond_7
    goto/16 :goto_77

    :sswitch_9
    const-string v0, "basecodepath"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_78

    :sswitch_13
    const-string/jumbo v0, "packagename"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_78

    :sswitch_1e
    const-string/jumbo v0, "isstatic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_78

    :sswitch_29
    const-string/jumbo v0, "isenabled"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_78

    :sswitch_34
    const-string/jumbo v0, "state"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_78

    :sswitch_3f
    const-string v0, "category"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_78

    :sswitch_4a
    const-string/jumbo v0, "userid"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_78

    :sswitch_55
    const-string/jumbo v0, "priority"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_78

    :sswitch_61
    const-string/jumbo v0, "targetpackagename"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_78

    :sswitch_6c
    const-string/jumbo v0, "targetoverlayablename"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_78

    :goto_77
    const/4 v0, -0x1

    :goto_78
    packed-switch v0, :pswitch_data_fc

    goto :goto_d0

    .line 362
    :pswitch_7c  #0x9
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d0

    .line 359
    :pswitch_84  #0x8
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 360
    goto :goto_d0

    .line 356
    :pswitch_8c  #0x7
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 357
    goto :goto_d0

    .line 353
    :pswitch_94  #0x6
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$2100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 354
    goto :goto_d0

    .line 350
    :pswitch_9c  #0x5
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$2000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    invoke-static {v0}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 351
    goto :goto_d0

    .line 347
    :pswitch_a8  #0x4
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 348
    goto :goto_d0

    .line 344
    :pswitch_b0  #0x3
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 345
    goto :goto_d0

    .line 341
    :pswitch_b8  #0x2
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 342
    goto :goto_d0

    .line 338
    :pswitch_c0  #0x1
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 339
    goto :goto_d0

    .line 335
    :pswitch_c8  #0x0
    invoke-static {p2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 336
    nop

    .line 365
    :goto_d0
    return-void

    nop

    :sswitch_data_d2
    .sparse-switch
        -0x685a1e7c -> :sswitch_6c
        -0x4a674a60 -> :sswitch_61
        -0x4577865c -> :sswitch_55
        -0x31d4cdda -> :sswitch_4a
        0x302bcfe -> :sswitch_3f
        0x68ac491 -> :sswitch_34
        0x1a483ad7 -> :sswitch_29
        0x2995d418 -> :sswitch_1e
        0x36391bd1 -> :sswitch_13
        0x64f6f963 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_c8  #00000000
        :pswitch_c0  #00000001
        :pswitch_b8  #00000002
        :pswitch_b0  #00000003
        :pswitch_a8  #00000004
        :pswitch_9c  #00000005
        :pswitch_94  #00000006
        :pswitch_8c  #00000007
        :pswitch_84  #00000008
        :pswitch_7c  #00000009
    .end packed-switch
.end method

.method static synthetic lambda$dump$6(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 4
    .param p0, "dumpState"  # Lcom/android/server/om/DumpState;
    .param p1, "item"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 296
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/om/DumpState;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$dump$7(Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 4
    .param p0, "dumpState"  # Lcom/android/server/om/DumpState;
    .param p1, "item"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 299
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getOverlaysForTarget$0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3
    .param p0, "i"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 188
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method static synthetic lambda$getOverlaysForTarget$1(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;
    .registers 2
    .param p0, "rec$"  # Ljava/lang/Object;

    .line 189
    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getOverlaysForUser$2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3
    .param p0, "i"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 197
    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method static synthetic lambda$getOverlaysForUser$3(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;
    .registers 2
    .param p0, "rec$"  # Ljava/lang/Object;

    .line 198
    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getOverlaysForUser$4(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"  # Landroid/content/om/OverlayInfo;

    .line 199
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getUsers$5(Ljava/lang/Object;)I
    .registers 2
    .param p0, "rec$"  # Ljava/lang/Object;

    .line 204
    move-object v0, p0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectWhereTarget$11(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3
    .param p0, "targetPackageName"  # Ljava/lang/String;
    .param p1, "item"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 630
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$selectWhereUser$10(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3
    .param p0, "userId"  # I
    .param p1, "item"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 624
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private select(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 613
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 614
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_25

    .line 615
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 616
    .local v2, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p2, :cond_22

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 617
    return v1

    .line 614
    .end local v2  # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 620
    .end local v1  # "i":I
    :cond_25
    const/4 v1, -0x1

    return v1
.end method

.method private selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "targetPackageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/stream/Stream<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$L_Sj43p2Txm_KH-wT0lseBTVzh8;

    invoke-direct {v1, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$L_Sj43p2Txm_KH-wT0lseBTVzh8;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 629
    return-object v0
.end method

.method private selectWhereUser(I)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$Fjt465P6G89HQZERZFsOEjMbtXI;

    invoke-direct {v1, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$Fjt465P6G89HQZERZFsOEjMbtXI;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 6
    .param p1, "p"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/om/DumpState;

    .line 294
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 295
    .local v0, "items":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getUserId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 296
    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$n3zAcJx5VlITl9U9fQatqN2KJyA;

    invoke-direct {v1, p2}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$n3zAcJx5VlITl9U9fQatqN2KJyA;-><init>(Lcom/android/server/om/DumpState;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 298
    :cond_16
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 299
    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$leWA95COTthWNYtDKcdKVChlc-c;

    invoke-direct {v1, p2}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$leWA95COTthWNYtDKcdKVChlc-c;-><init>(Lcom/android/server/om/DumpState;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 303
    :cond_25
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 304
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getField()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 305
    new-instance v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$BKNCDt6MBH2RSKr2mbIUnL_dIvA;-><init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_43

    .line 307
    :cond_3b
    new-instance v2, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$Xr3l7ivgTflBmPTqf9hbG3i0H_I;

    invoke-direct {v2, p0, v1}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$Xr3l7ivgTflBmPTqf9hbG3i0H_I;-><init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 309
    :goto_43
    return-void
.end method

.method getEnabled(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 147
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    return v1

    .line 145
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 118
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    return-object v1

    .line 116
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "targetPackageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$ATr0DZmWpSWdKD0COw4t2qS-DRk;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$ATr0DZmWpSWdKD0COw4t2qS-DRk;

    .line 188
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;

    .line 189
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 190
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 187
    return-object v0
.end method

.method getOverlaysForUser(I)Landroid/util/ArrayMap;
    .registers 6
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$IkswmT9ZZJXmNAztGRVrD3hODMw;

    .line 197
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$jZUujzDxrP0hpAqUxnqEf-b-nQc;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$jZUujzDxrP0hpAqUxnqEf-b-nQc;

    .line 198
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$sx0Nyvq91kCH_A-4Ctf09G_0u9M;

    sget-object v2, Lcom/android/server/om/-$$Lambda$bXuJGR0fITXNwGnQfQHv9KS-XgY;->INSTANCE:Lcom/android/server/om/-$$Lambda$bXuJGR0fITXNwGnQfQHv9KS-XgY;

    .line 200
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 199
    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 196
    return-object v0
.end method

.method getState(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 168
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    return v1

    .line 166
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method getUsers()[I
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$vXm2C4y9Q-F5yYZNimB-Lr6w-oI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 20
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "targetPackageName"  # Ljava/lang/String;
    .param p4, "targetOverlayableName"  # Ljava/lang/String;
    .param p5, "baseCodePath"  # Ljava/lang/String;
    .param p6, "isStatic"  # Z
    .param p7, "priority"  # I
    .param p8, "overlayCategory"  # Ljava/lang/String;

    .line 73
    move-object v0, p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 74
    new-instance v10, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-object v1, v10

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 77
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-eqz p6, :cond_59

    .line 79
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    .line 82
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_23
    if-ltz v3, :cond_41

    .line 83
    iget-object v2, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 84
    .local v2, "parentItem":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    move/from16 v5, p7

    if-gt v4, v5, :cond_3e

    .line 85
    goto :goto_43

    .line 84
    :cond_3c
    move/from16 v5, p7

    .line 82
    .end local v2  # "parentItem":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    :cond_41
    move/from16 v5, p7

    .line 88
    :goto_43
    add-int/lit8 v2, v3, 0x1

    .line 89
    .local v2, "pos":I
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_53

    .line 90
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 92
    :cond_53
    iget-object v4, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    .end local v2  # "pos":I
    .end local v3  # "i":I
    :goto_58
    goto :goto_60

    .line 95
    :cond_59
    move/from16 v5, p7

    iget-object v2, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_60
    return-void
.end method

.method public synthetic lambda$dump$8$OverlayManagerSettings(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 5
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/om/DumpState;
    .param p3, "item"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 305
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getField()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/om/OverlayManagerSettings;->dumpSettingsItemField(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$dump$9$OverlayManagerSettings(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 3
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "item"  # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dumpSettingsItem(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method

.method persist(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "os"  # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V

    .line 373
    return-void
.end method

.method remove(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, "idx":I
    if-gez v0, :cond_8

    .line 105
    const/4 v1, 0x0

    return v1

    .line 108
    :cond_8
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    const/4 v1, 0x1

    return v1
.end method

.method removeUser(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "removed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 213
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 214
    .local v2, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p1, :cond_20

    .line 219
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    .line 221
    add-int/lit8 v1, v1, -0x1

    .line 212
    .end local v2  # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 224
    .end local v1  # "i":I
    :cond_23
    return v0
.end method

.method restore(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"  # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    .line 369
    return-void
.end method

.method setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "path"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 130
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 128
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method setCategory(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "category"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 139
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 137
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method setEnabled(Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "enable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 159
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    move-result v1

    return v1

    .line 157
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, "idx":I
    if-ltz v0, :cond_24

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_11

    goto :goto_24

    .line 286
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 287
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 288
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return v2

    .line 283
    .end local v1  # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_24
    :goto_24
    const/4 v1, 0x0

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, "idx":I
    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 266
    return v1

    .line 269
    :cond_8
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 270
    .local v2, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 272
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "newParentPackageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 233
    return v1

    .line 235
    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "moveIdx":I
    if-gez v0, :cond_f

    .line 237
    return v1

    .line 240
    :cond_f
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v2

    .line 241
    .local v2, "parentIdx":I
    if-gez v2, :cond_16

    .line 242
    return v1

    .line 245
    :cond_16
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 248
    .local v3, "itemToMove":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 250
    return v1

    .line 253
    :cond_35
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 254
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 255
    .local v4, "newParentIdx":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    if-eq v0, v4, :cond_48

    move v1, v5

    :cond_48
    return v1
.end method

.method setState(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "state"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, "idx":I
    if-ltz v0, :cond_13

    .line 180
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z

    move-result v1

    return v1

    .line 178
    :cond_13
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
