.class public Lcom/meizu/settings/language/FlymeZonePicker;
.super Landroid/app/ListFragment;
.source "FlymeZonePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/language/FlymeZonePicker$MyAlphabetIndexerPlus;,
        Lcom/meizu/settings/language/FlymeZonePicker$MyComparator;,
        Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;,
        Lcom/meizu/settings/language/FlymeZonePicker$ZoneSelectionListener;
    }
.end annotation


# static fields
.field private static mSelectID:Ljava/lang/String;


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field private mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

.field private mComparator:Lcom/meizu/settings/language/FlymeZonePicker$MyComparator;

.field private mDeleteTextImage:Landroid/widget/ImageView;

.field private mFragmentStopped:Z

.field private mIndexer:Lcom/meizu/settings/language/FlymeZonePicker$MyAlphabetIndexerPlus;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/meizu/settings/language/FlymeZonePicker$ZoneSelectionListener;

.field private mLookupKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNoResultText:Landroid/widget/TextView;

.field private mSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSearchText:Landroid/widget/EditText;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSortedByTimezone:Z

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSearchList:Ljava/util/ArrayList;

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mLookupKeys:Ljava/util/HashMap;

    .line 110
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mFragmentStopped:Z

    .line 670
    new-instance v0, Lcom/meizu/settings/language/FlymeZonePicker$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeZonePicker$4;-><init>(Lcom/meizu/settings/language/FlymeZonePicker;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/language/FlymeZonePicker;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker;->changeChar(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 71
    sget-object v0, Lcom/meizu/settings/language/FlymeZonePicker;->mSelectID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/settings/language/FlymeZonePicker;)Landroid/widget/EditText;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSearchText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/language/FlymeZonePicker;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/language/FlymeZonePicker;->getLookupKeys(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/language/FlymeZonePicker;)Ljava/util/HashMap;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mLookupKeys:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/language/FlymeZonePicker;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mFragmentStopped:Z

    return p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/language/FlymeZonePicker;)Lcom/meizu/settings/language/FlymeZonePicker$MyAlphabetIndexerPlus;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mIndexer:Lcom/meizu/settings/language/FlymeZonePicker$MyAlphabetIndexerPlus;

    return-object p0
.end method

.method private static addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 511
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 512
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-static {p2}, Lcom/meizu/settings/language/FlymeAlphabetUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "alphabet"

    .line 513
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 516
    invoke-virtual {p1, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 517
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 518
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "GMT"

    .line 519
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez p1, :cond_3a

    const/16 p4, 0x2d

    .line 522
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_3a
    const/16 p4, 0x2b

    .line 524
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3f
    const p4, 0x36ee80

    .line 527
    div-int p4, p2, p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p4, 0x3a

    .line 528
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p4, 0xea60

    .line 530
    div-int/2addr p2, p4

    .line 531
    rem-int/lit8 p2, p2, 0x3c

    const/16 p4, 0xa

    if-ge p2, p4, :cond_5b

    const/16 p4, 0x30

    .line 534
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    :cond_5b
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "gmt"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_7d

    .line 540
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7d

    const-string p1, "drawable_name"

    .line 541
    invoke-virtual {v0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_7d
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private changeChar(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    const/4 p0, 0x0

    .line 625
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_12

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    return-object p1

    :cond_12
    const-string p0, "#"

    return-object p0
.end method

.method private createDeleteTextClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 804
    new-instance v0, Lcom/meizu/settings/language/FlymeZonePicker$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeZonePicker$5;-><init>(Lcom/meizu/settings/language/FlymeZonePicker;)V

    return-object v0
.end method

.method private doSearch(Landroid/text/Editable;)V
    .registers 9

    .line 729
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mList:Ljava/util/List;

    if-eqz v0, :cond_89

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_89

    .line 730
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 731
    :goto_10
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_83

    .line 732
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    .line 735
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 736
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ZonePicker"

    .line 734
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 740
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 740
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 742
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/meizu/settings/language/FlymeZonePicker;->matchLookupKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 743
    :cond_7b
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 746
    :cond_83
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSearchList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker;->setPinnedAdapter(Ljava/util/List;)V

    goto :goto_8e

    .line 748
    :cond_89
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker;->setPinnedAdapter(Ljava/util/List;)V

    :goto_8e
    return-void
.end method

.method private static getDefaultDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 585
    :cond_8
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object v1
.end method

.method private getLookupKeys(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 415
    :cond_d
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker;->translateNameInSpecialPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-static {}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->getInstance()Lcom/meizu/settings/language/FlymeHanziToPinyin;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    .line 417
    :goto_1b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_77

    const-string v2, ""

    move-object v3, v2

    move v2, p1

    .line 419
    :goto_25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_63

    if-le v1, v2, :cond_49

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;

    iget-object v3, v3, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_60

    .line 423
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;

    iget-object v3, v3, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_63
    if-eqz p2, :cond_6d

    const-string v2, "Z"

    const-string v4, "C"

    .line 427
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 429
    :cond_6d
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_77
    return-object v0
.end method

.method private static getZones(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "ZonePicker"

    .line 446
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 447
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 449
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1600b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 451
    :goto_1a
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v11, 0x2

    if-eq v1, v11, :cond_22

    goto :goto_1a

    .line 453
    :cond_22
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    .line 454
    :goto_25
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v12, 0x3

    if-eq v1, v12, :cond_d3

    .line 455
    :goto_2c
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v11, :cond_3e

    .line 456
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    if-ne v1, v2, :cond_3a

    return-object v7

    .line 459
    :cond_3a
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_2c

    .line 461
    :cond_3e
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "timezone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 462
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "id"

    const/4 v4, 0x0

    .line 465
    invoke-interface {v10, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-le v1, v2, :cond_87

    const-string v1, "drawable"

    .line 468
    invoke-interface {v10, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable_name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v1

    goto :goto_88

    :cond_87
    move-object v6, v4

    .line 472
    :goto_88
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "string"

    const-string v5, "com.android.settings"

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a5

    .line 478
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b8

    :cond_a5
    const-string v1, "time zone displayNameResId parser failed."

    .line 480
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {p0, v3}, Lcom/meizu/settings/language/FlymeZonePicker;->getDefaultDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b8

    :cond_af
    const-string v1, "time zone displayNameResId is null"

    .line 484
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {p0, v3}, Lcom/meizu/settings/language/FlymeZonePicker;->getDefaultDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_b8
    move-object v4, v1

    if-nez v4, :cond_bd

    goto/16 :goto_25

    :cond_bd
    move-object v1, v7

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v8

    .line 490
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/language/FlymeZonePicker;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 492
    :cond_c4
    :goto_c4
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    if-eq v1, v12, :cond_ce

    .line 493
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_c4

    .line 495
    :cond_ce
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    goto/16 :goto_25

    .line 497
    :cond_d3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_d6} :catch_dd
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_d6} :catch_d7

    goto :goto_e2

    :catch_d7
    const-string p0, "Unable to read timezones.xml file"

    .line 501
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    :catch_dd
    const-string p0, "Ill-formatted timezones.xml file"

    .line 499
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e2
    return-object v7
.end method

.method private initListViewAndContainer(Landroid/view/View;)V
    .registers 11

    .line 290
    new-instance v0, Lcom/meizu/settings/language/FlymeZonePicker$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeZonePicker$1;-><init>(Lcom/meizu/settings/language/FlymeZonePicker;)V

    .line 309
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;

    .line 310
    invoke-virtual {p0}, Landroid/app/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070764

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 311
    invoke-virtual {p0}, Landroid/app/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070765

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 312
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    invoke-static {p0, v4}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[I)Landroid/widget/ListView$DividerPadding;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 313
    invoke-virtual {v1}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v5, 0x7f070767

    const v6, 0x7f070766

    const/4 v7, -0x1

    const v8, 0x7f070172

    invoke-virtual/range {v2 .. v8}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterParam(IIIIII)V

    .line 317
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->setListViewHoldPress(Landroid/widget/ListView;)V

    .line 323
    invoke-virtual {v1}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object p0

    new-instance v1, Lcom/meizu/settings/language/LetterBackgroundSet;

    invoke-direct {v1}, Lcom/meizu/settings/language/LetterBackgroundSet;-><init>()V

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterBackground(Ljava/util/Map;)V

    const p0, 0x7f0a0568

    .line 325
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initLookupKeys(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/settings/language/FlymeZonePicker$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker$2;-><init>(Lcom/meizu/settings/language/FlymeZonePicker;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 389
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private matchLookupKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 756
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mLookupKeys:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 757
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mLookupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_3b

    .line 758
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3b

    move p2, v1

    .line 759
    :goto_1c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3b

    .line 760
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    .line 761
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 760
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    goto :goto_3b

    :cond_38
    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    :cond_3b
    :goto_3b
    return v1
.end method

.method private static setDispalyHead(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 632
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 635
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 636
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "dispalyHead"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 637
    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5b

    .line 638
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    add-int/lit8 v5, v1, -0x1

    .line 639
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "alphabet"

    .line 640
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 641
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v7, v5, :cond_51

    .line 642
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 644
    :cond_51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_5b
    return-void
.end method

.method private setPinnedAdapter(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_95

    .line 774
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mComparator:Lcom/meizu/settings/language/FlymeZonePicker$MyComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 775
    new-instance v0, Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;-><init>(Lcom/meizu/settings/language/FlymeZonePicker;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

    .line 777
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->setHasHeader(IZ)V

    .line 780
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->setHeaderTextBackgroundColor(I)V

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 783
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "name"

    .line 785
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 786
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-static {v3}, Lcom/meizu/settings/language/FlymeAlphabetUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 788
    :cond_53
    new-instance v2, Lcom/meizu/settings/language/FlymeZonePicker$MyAlphabetIndexerPlus;

    iget-object v3, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mAlphabet:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v3}, Lcom/meizu/settings/language/FlymeZonePicker$MyAlphabetIndexerPlus;-><init>(Lcom/meizu/settings/language/FlymeZonePicker;Ljava/util/List;Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mIndexer:Lcom/meizu/settings/language/FlymeZonePicker$MyAlphabetIndexerPlus;

    .line 789
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 790
    invoke-direct {p0, v1}, Lcom/meizu/settings/language/FlymeZonePicker;->setSorting(Z)V

    .line 791
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeZonePicker;->setDispalyHead(Ljava/util/List;)V

    .line 792
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_7e

    .line 793
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 794
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mNoResultText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8a

    .line 796
    :cond_7e
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 797
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mNoResultText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    :goto_8a
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_95
    return-void
.end method

.method private setSorting(Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 439
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mTimezoneSortedAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

    goto :goto_7

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

    .line 441
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 442
    iput-boolean p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSortedByTimezone:Z

    return-void
.end method

.method private translateNameInSpecialPinYin(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, "佛"

    .line 394
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "仏"

    .line 395
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_f
    const-string p0, "柏"

    .line 396
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "伯"

    .line 397
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_1e
    const-string p0, "都"

    .line 398
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "杜"

    .line 399
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_2d
    const-string p0, "厦"

    .line 400
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "夏"

    if-eqz v0, :cond_3c

    .line 401
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_3c
    const-string p0, "廈"

    .line 402
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 403
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    .line 405
    :cond_49
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4d
    return-object p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    const-string v0, "ZonePicker"

    const-string v1, "afterTextChanged"

    .line 717
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker;->doSearch(Landroid/text/Editable;)V

    .line 719
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1b

    .line 720
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mDeleteTextImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22

    .line 722
    :cond_1b
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mDeleteTextImage:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_22
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 330
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 331
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 333
    new-instance v0, Lcom/meizu/settings/language/FlymeZonePicker$MyComparator;

    const-string v1, "alphabet"

    invoke-direct {v0, v1}, Lcom/meizu/settings/language/FlymeZonePicker$MyComparator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mComparator:Lcom/meizu/settings/language/FlymeZonePicker$MyComparator;

    .line 334
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeZonePicker;->getZones(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 335
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mList:Ljava/util/List;

    const p1, 0x7f120860

    .line 336
    invoke-virtual {p0, p1}, Landroid/app/ListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mAlphabet:Ljava/lang/String;

    .line 338
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker;->setPinnedAdapter(Ljava/util/List;)V

    .line 339
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker;->initLookupKeys(Ljava/util/List;)V

    .line 340
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/meizu/settings/language/FlymeZonePicker;->mSelectID:Ljava/lang/String;

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TimeZone.getDefault() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZonePicker"

    .line 342
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 344
    invoke-virtual {p0, p1}, Landroid/app/ListFragment;->setHasOptionsMenu(Z)V

    .line 345
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 346
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d025e

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 257
    instance-of p2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p2, :cond_15

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 262
    :cond_15
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p2, 0x30

    .line 263
    invoke-virtual {p0, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 369
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 370
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSearchText:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    .line 371
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_a
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    .line 548
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string p2, "id"

    .line 552
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onListItemClick, tzId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ZonePicker"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p4, "alarm"

    .line 558
    invoke-virtual {p2, p4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 559
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 560
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    .line 561
    sput-object p1, Lcom/meizu/settings/language/FlymeZonePicker;->mSelectID:Ljava/lang/String;

    .line 563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onListItemClick, tz = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mListener:Lcom/meizu/settings/language/FlymeZonePicker$ZoneSelectionListener;

    if-eqz p1, :cond_58

    .line 565
    invoke-interface {p1, p2}, Lcom/meizu/settings/language/FlymeZonePicker$ZoneSelectionListener;->onZoneSelected(Ljava/util/TimeZone;)V

    goto :goto_6c

    .line 567
    :cond_58
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;

    invoke-virtual {p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 568
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/meizu/settings/language/FlymeZonePicker$3;

    invoke-direct {p2, p0}, Lcom/meizu/settings/language/FlymeZonePicker$3;-><init>(Lcom/meizu/settings/language/FlymeZonePicker;)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6c
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 817
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 818
    iput-boolean p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mFragmentStopped:Z

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 823
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    const/4 v0, 0x0

    .line 824
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mFragmentStopped:Z

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 829
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mFragmentStopped:Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    const p2, 0x7f0a0416

    .line 270
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSearchText:Landroid/widget/EditText;

    const p2, 0x7f0a0418

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mDeleteTextImage:Landroid/widget/ImageView;

    .line 272
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mDeleteTextImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeZonePicker;->createDeleteTextClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeZonePicker;->initListViewAndContainer(Landroid/view/View;)V

    const p2, 0x7f0a04ee

    .line 277
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mNoResultText:Landroid/widget/TextView;

    .line 278
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker;->mNoResultText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    invoke-virtual {p0}, Landroid/app/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070439

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 281
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->createDividerPadding([I)Landroid/widget/ListView$DividerPadding;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 283
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const p2, 0x7f0600a4

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 p2, 0x26

    .line 284
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 285
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 286
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method
