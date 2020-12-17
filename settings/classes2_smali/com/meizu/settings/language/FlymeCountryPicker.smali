.class public Lcom/meizu/settings/language/FlymeCountryPicker;
.super Landroid/app/ListFragment;
.source "FlymeCountryPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;,
        Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;,
        Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlphabet:Ljava/lang/String;

.field private mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;

.field private mComparator:Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;

.field private mDeleteTextImage:Landroid/widget/ImageView;

.field private mIndexer:Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

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

.field private mSelectID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSelectID:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mLookupKeys:Ljava/util/HashMap;

    .line 500
    new-instance v0, Lcom/meizu/settings/language/FlymeCountryPicker$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeCountryPicker$4;-><init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/language/FlymeCountryPicker;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSelectID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/language/FlymeCountryPicker;)Landroid/app/Activity;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/language/FlymeCountryPicker;)Landroid/widget/EditText;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/language/FlymeCountryPicker;)Ljava/util/List;
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->getRegions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/language/FlymeCountryPicker;)Ljava/util/List;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/language/FlymeCountryPicker;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/language/FlymeCountryPicker;Ljava/util/List;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->initLookupKeys(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/language/FlymeCountryPicker;Ljava/util/List;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->setPinnedAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/language/FlymeCountryPicker;)Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mIndexer:Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    return-object p0
.end method

.method private static addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 378
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "id"

    .line 379
    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {p2}, Lcom/meizu/settings/language/FlymeAlphabetUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "alphabet"

    .line 380
    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    .line 382
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "timezone"

    .line 384
    invoke-virtual {p3, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_27
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createDeleteTextClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 631
    new-instance v0, Lcom/meizu/settings/language/FlymeCountryPicker$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeCountryPicker$5;-><init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V

    return-object v0
.end method

.method private doSearch(Landroid/text/Editable;)V
    .registers 9

    .line 555
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mList:Ljava/util/List;

    if-eqz v0, :cond_5e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 556
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 557
    :goto_10
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 558
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "name"

    .line 565
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 566
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 568
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/meizu/settings/language/FlymeCountryPicker;->matchLookupKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 569
    :cond_50
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 572
    :cond_58
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->setPinnedAdapter(Ljava/util/List;)V

    goto :goto_63

    .line 574
    :cond_5e
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->setPinnedAdapter(Ljava/util/List;)V

    :goto_63
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 644
    :try_start_1
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_e

    if-lez p0, :cond_e

    const/4 v0, 0x1

    :catch_e
    :cond_e
    return v0
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

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 276
    :cond_d
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->translateNameInSpecialPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-static {}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->getInstance()Lcom/meizu/settings/language/FlymeHanziToPinyin;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meizu/settings/language/FlymeHanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    .line 278
    :goto_1b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_77

    const-string v2, ""

    move-object v3, v2

    move v2, p1

    .line 280
    :goto_25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_63

    if-le v1, v2, :cond_49

    .line 282
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

    .line 284
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

    .line 288
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 290
    :cond_6d
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_77
    return-object v0
.end method

.method private getRegions()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "FlymeCountryPicker"

    .line 319
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    if-nez p0, :cond_c

    .line 321
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 324
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    :try_start_11
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f160099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 328
    :goto_1c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    goto :goto_1c

    .line 330
    :cond_24
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 331
    :goto_27
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7e

    .line 332
    :goto_2e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v4, :cond_40

    .line 333
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-ne v3, v6, :cond_3c

    return-object v1

    .line 336
    :cond_3c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_2e

    .line 338
    :cond_40
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "country"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 339
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    const-string v7, "id"

    const/4 v8, 0x0

    .line 342
    invoke-interface {v2, v8, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-le v3, v6, :cond_60

    const-string v6, "drawable"

    .line 345
    invoke-interface {v2, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_61

    :cond_60
    move-object v6, v8

    :goto_61
    if-le v3, v4, :cond_69

    const-string v3, "timezone"

    .line 351
    invoke-interface {v2, v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 357
    :cond_69
    invoke-static {p0, v7}, Lcom/meizu/settings/language/FlymeRegion;->getCountryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v1, v7, v3, v6, v8}, Lcom/meizu/settings/language/FlymeCountryPicker;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_70
    :goto_70
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_7a

    .line 361
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_70

    .line 363
    :cond_7a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_27

    .line 365
    :cond_7e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_81} :catch_88
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_81} :catch_82

    goto :goto_8d

    :catch_82
    const-string p0, "Unable to read mz_countries.xml file"

    .line 369
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :catch_88
    const-string p0, "Ill-formatted mz_countries.xml file"

    .line 367
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    return-object v1
.end method

.method private initListViewAndContainer(Landroid/view/View;)V
    .registers 14

    .line 191
    new-instance v0, Lcom/meizu/settings/language/FlymeCountryPicker$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeCountryPicker$1;-><init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V

    const v1, 0x102000a

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;

    .line 211
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070439

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p0, v3, v4

    const/4 v5, 0x1

    aput p0, v3, v5

    .line 212
    invoke-static {v3}, Lcom/meizu/settings/utils/MzUtils;->createDividerPadding([I)Landroid/widget/ListView$DividerPadding;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 213
    invoke-virtual {v1}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x1

    const v8, 0x7f070767

    const v9, 0x7f070766

    const/4 v10, -0x1

    const v11, 0x7f070172

    invoke-virtual/range {v5 .. v11}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterParam(IIIIII)V

    .line 217
    invoke-virtual {v1}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object p0

    new-instance v3, Lcom/meizu/settings/language/LetterBackgroundSet;

    invoke-direct {v3}, Lcom/meizu/settings/language/LetterBackgroundSet;-><init>()V

    invoke-virtual {p0, v3}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterBackground(Ljava/util/Map;)V

    .line 218
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x7f0600a4

    invoke-direct {p0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v3, 0x26

    .line 219
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 220
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const p0, 0x1020004

    .line 222
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 223
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 224
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 225
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p0, 0x7f0a0568

    .line 226
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initLookupKeys(Ljava/util/List;)V
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

    if-eqz p1, :cond_2c

    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    move v1, v0

    .line 246
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 247
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mLookupKeys:Ljava/util/HashMap;

    invoke-direct {p0, v2, v0}, Lcom/meizu/settings/language/FlymeCountryPicker;->getLookupKeys(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2c
    return-void
.end method

.method private initRegionList()V
    .registers 2

    .line 301
    new-instance v0, Lcom/meizu/settings/language/FlymeCountryPicker$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeCountryPicker$2;-><init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 315
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private matchLookupKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 581
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mLookupKeys:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 582
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mLookupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_3b

    .line 583
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3b

    move p2, v1

    .line 584
    :goto_1c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3b

    .line 585
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    .line 586
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
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

    .line 462
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 465
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 466
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "dispalyHead"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 467
    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5b

    .line 468
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    add-int/lit8 v5, v1, -0x1

    .line 469
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "alphabet"

    .line 470
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 471
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v7, v5, :cond_51

    .line 472
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 474
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

    .line 598
    invoke-virtual {p0}, Landroid/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_9c

    .line 603
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mComparator:Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 604
    new-instance v0, Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;

    iget-object v1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;-><init>(Lcom/meizu/settings/language/FlymeCountryPicker;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;

    .line 606
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;

    iget-object v1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->setHeaderTextBackgroundColor(I)V

    .line 607
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->setHasHeader(IZ)V

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "name"

    .line 612
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 613
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-static {v3}, Lcom/meizu/settings/language/FlymeAlphabetUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 611
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 615
    :cond_5a
    new-instance v2, Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    iget-object v3, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mAlphabet:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v3}, Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;-><init>(Lcom/meizu/settings/language/FlymeCountryPicker;Ljava/util/List;Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mIndexer:Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;

    .line 616
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 617
    invoke-direct {p0, v1}, Lcom/meizu/settings/language/FlymeCountryPicker;->setSorting(Z)V

    .line 618
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->setDispalyHead(Ljava/util/List;)V

    .line 619
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_90

    .line 620
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mNoResultText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9c

    .line 624
    :cond_90
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 625
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mNoResultText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9c
    :goto_9c
    return-void
.end method

.method private setSorting(Z)V
    .registers 2

    .line 296
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;

    .line 297
    invoke-virtual {p0, p1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private translateNameInSpecialPinYin(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, "佛"

    .line 255
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "仏"

    .line 256
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_f
    const-string p0, "柏"

    .line 257
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "伯"

    .line 258
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_1e
    const-string p0, "都"

    .line 259
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "杜"

    .line 260
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_2d
    const-string p0, "厦"

    .line 261
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "夏"

    if-eqz v0, :cond_3c

    .line 262
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    :cond_3c
    const-string p0, "廈"

    .line 263
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 264
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4d

    .line 266
    :cond_49
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4d
    return-object p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 544
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->doSearch(Landroid/text/Editable;)V

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_14

    .line 546
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mDeleteTextImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b

    .line 548
    :cond_14
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mDeleteTextImage:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1b
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 231
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 232
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->initRegionList()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 143
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Landroid/app/ListFragment;->setHasOptionsMenu(Z)V

    .line 147
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    .line 148
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    const v0, 0x7f120860

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mAlphabet:Ljava/lang/String;

    .line 149
    new-instance p1, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;

    const-string v0, "alphabet"

    invoke-direct {p1, v0}, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mComparator:Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;

    .line 151
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/meizu/settings/language/FlymeRegion;->getCurrentCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSelectID:Ljava/lang/String;

    goto :goto_3a

    .line 155
    :cond_38
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSelectID:Ljava/lang/String;

    :goto_3a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d025e

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 164
    instance-of p2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p2, :cond_15

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 169
    :cond_15
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x30

    .line 170
    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 172
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    const p3, 0x7f121179

    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker;->initListViewAndContainer(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 237
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 238
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchText:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    .line 239
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_a
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    .line 391
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string p2, "id"

    .line 395
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 398
    iput-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSelectID:Ljava/lang/String;

    .line 402
    iget-object p3, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    invoke-static {p3, p2}, Lcom/meizu/settings/language/FlymeRegion;->setCountry(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "auto_time_zone"

    .line 404
    invoke-direct {p0, p2}, Lcom/meizu/settings/language/FlymeCountryPicker;->getAutoState(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3b

    const-string p2, "timezone"

    .line 406
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3b

    .line 408
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mActivity:Landroid/app/Activity;

    const-string p3, "alarm"

    .line 409
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 410
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 415
    :cond_3b
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mAlphabeticalAdapter:Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;

    invoke-virtual {p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 416
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/meizu/settings/language/FlymeCountryPicker$3;

    invoke-direct {p2, p0}, Lcom/meizu/settings/language/FlymeCountryPicker$3;-><init>(Lcom/meizu/settings/language/FlymeCountryPicker;)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const p2, 0x7f0a0416

    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchText:Landroid/widget/EditText;

    .line 182
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchText:Landroid/widget/EditText;

    const v0, 0x7f12117a

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(I)V

    const p2, 0x7f0a0418

    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mDeleteTextImage:Landroid/widget/ImageView;

    .line 184
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mDeleteTextImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->createDeleteTextClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0a04ee

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mNoResultText:Landroid/widget/TextView;

    .line 187
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker;->mNoResultText:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
