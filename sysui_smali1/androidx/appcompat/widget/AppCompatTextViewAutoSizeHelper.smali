.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# static fields
.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field private static sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private final mContext:Landroid/content/Context;

.field private mHasPresetAutoSizeValues:Z

.field private mNeedsAutoSizeText:Z

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 86
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    const/high16 v1, -0x40800000  # -1.0f

    .line 88
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 90
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 92
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    new-array v1, v0, [I

    .line 95
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 99
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 106
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 107
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 803
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p2

    .line 808
    :cond_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to access TextView#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " member"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTVAutoSizeHelper"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .registers 7

    .line 453
    array-length p0, p1

    if-nez p0, :cond_4

    return-object p1

    .line 457
    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, p0, :cond_28

    .line 461
    aget v3, p1, v2

    if-lez v3, :cond_25

    .line 464
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_25

    .line 465
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 469
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne p0, v2, :cond_2f

    return-object p1

    .line 472
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    .line 473
    new-array p1, p0, [I

    :goto_35
    if-ge v1, p0, :cond_46

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_46
    return-object p1
.end method

.method private clearAutoSizeConfiguration()V
    .registers 3

    const/4 v0, 0x0

    .line 585
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/high16 v1, -0x40800000  # -1.0f

    .line 586
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 587
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 588
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    new-array v1, v0, [I

    .line 589
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 590
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return-void
.end method

.method private createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .registers 9
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 725
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 726
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    goto :goto_19

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const-string v2, "getTextDirectionHeuristic"

    .line 727
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextDirectionHeuristic;

    :goto_19
    const/4 v1, 0x0

    .line 731
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    .line 730
    invoke-static {p1, v1, v2, v3, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 733
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 735
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p2

    iget-object p3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 736
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result p3

    .line 734
    invoke-virtual {p1, p2, p3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 737
    invoke-virtual {p2}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 738
    invoke-virtual {p2}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 739
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, -0x1

    if-ne p4, p1, :cond_5c

    const p4, 0x7fffffff

    .line 740
    :cond_5c
    invoke-virtual {p0, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 741
    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 742
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method private createStaticLayoutForMeasuringPre16(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .registers 13

    .line 765
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000  # 1.0f

    .line 766
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mSpacingMult"

    .line 765
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 767
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 768
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mSpacingAdd"

    .line 767
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 769
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 770
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mIncludePad"

    .line 769
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 772
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .registers 13
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .line 748
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    .line 749
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v7

    .line 750
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v8

    .line 754
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .registers 7

    .line 642
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_8
    move v4, v2

    move v2, v1

    move v1, v4

    :goto_b
    if-gt v1, v0, :cond_22

    add-int v2, v1, v0

    .line 652
    div-int/lit8 v2, v2, 0x2

    .line 653
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_b

    .line 662
    :cond_22
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget p0, p0, v2

    return p0

    .line 644
    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No available text sizes to choose from."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getTextViewField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 838
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_1b

    .line 840
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 843
    sget-object v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-object v0

    :catch_1c
    move-exception v0

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " member"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 818
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1e

    .line 820
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 824
    sget-object v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-object v0

    :catch_1f
    move-exception v0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve TextView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 786
    :try_start_1
    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 787
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_2b

    :catchall_c
    move-exception p0

    goto :goto_2c

    :catch_e
    move-exception p0

    const/4 v0, 0x1

    :try_start_10
    const-string v1, "ACTVAutoSizeHelper"

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke TextView#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_c

    :goto_2b
    return-object p2

    .line 793
    :goto_2c
    throw p0
.end method

.method private setRawTextSize(F)V
    .registers 5

    .line 604
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5a

    .line 605
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 608
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    const/4 v1, 0x0

    if-lt p1, v0, :cond_25

    .line 609
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isInLayout()Z

    move-result p1

    goto :goto_26

    :cond_25
    move p1, v1

    .line 612
    :goto_26
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 614
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    :try_start_30
    const-string v0, "nullLayouts"

    .line 618
    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 620
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception v0

    const-string v1, "ACTVAutoSizeHelper"

    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    .line 623
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    if-nez p1, :cond_50

    .line 627
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_55

    .line 629
    :cond_50
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    .line 632
    :goto_55
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_5a
    return-void
.end method

.method private setupAutoSizeText()Z
    .registers 8

    .line 516
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    .line 520
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-nez v0, :cond_3e

    .line 522
    :cond_15
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 524
    new-array v3, v0, [I

    :goto_26
    if-ge v1, v0, :cond_38

    .line 526
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    int-to-float v5, v1

    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 529
    :cond_38
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 531
    :cond_3e
    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    goto :goto_43

    .line 533
    :cond_41
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 536
    :goto_43
    iget-boolean p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return p0
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .registers 6

    .line 427
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 428
    new-array v1, v0, [I

    if-lez v0, :cond_1e

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    const/4 v3, -0x1

    .line 432
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 434
    :cond_15
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 435
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    :cond_1e
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .registers 5

    .line 440
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_9

    move v3, v2

    goto :goto_a

    :cond_9
    move v3, v1

    .line 441
    :goto_a
    iput-boolean v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 442
    iget-boolean v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v3, :cond_23

    .line 443
    iput v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 444
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v1, v3, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    sub-int/2addr v0, v2

    .line 445
    aget v0, v3, v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    const/high16 v0, -0x40800000  # -1.0f

    .line 446
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 448
    :cond_23
    iget-boolean p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    return p0
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .registers 8

    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 690
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 692
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v0, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    move-object v0, v1

    .line 698
    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    if-lt v1, v2, :cond_25

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v3

    .line 699
    :goto_26
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->initTempTextPaint(I)V

    .line 702
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v4, "getLayoutAlignment"

    invoke-static {p1, v4, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout$Alignment;

    .line 704
    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createLayout(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eq v1, v3, :cond_59

    .line 707
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v1, :cond_58

    .line 708
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v1, v0, :cond_59

    :cond_58
    return p1

    .line 713
    :cond_59
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p2

    if-lez p0, :cond_65

    return p1

    :cond_65
    return v2
.end method

.method private supportsAutoSizeText()Z
    .registers 1

    .line 871
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    instance-of p0, p0, Landroidx/appcompat/widget/AppCompatEditText;

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, "px) is less or equal to (0px)"

    if-lez v1, :cond_5a

    cmpg-float v1, p2, p1

    if-lez v1, :cond_36

    cmpg-float v0, p3, v0

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    .line 508
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 509
    iput p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 510
    iput p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 511
    iput p3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    const/4 p1, 0x0

    .line 512
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    return-void

    .line 503
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The auto-size step granularity ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 497
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Maximum auto-size text size ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 492
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Minimum auto-size text size ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method autoSizeText()V
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 550
    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    if-eqz v0, :cond_9b

    .line 551
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_9a

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1d

    goto/16 :goto_9a

    .line 555
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2b

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 556
    invoke-virtual {v0}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v0

    goto :goto_3d

    :cond_2b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 557
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "getHorizontallyScrolling"

    invoke-static {v0, v3, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3d
    if-eqz v0, :cond_42

    const/high16 v0, 0x100000

    goto :goto_56

    .line 558
    :cond_42
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 560
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 561
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 562
    :goto_56
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 563
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    if-lez v0, :cond_9a

    if-gtz v1, :cond_6f

    goto :goto_9a

    .line 569
    :cond_6f
    sget-object v3, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v3

    .line 570
    :try_start_72
    sget-object v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 571
    sget-object v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 572
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 573
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 574
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_95

    .line 575
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 577
    :cond_95
    monitor-exit v3

    goto :goto_9b

    :catchall_97
    move-exception p0

    monitor-exit v3
    :try_end_99
    .catchall {:try_start_72 .. :try_end_99} :catchall_97

    throw p0

    :cond_9a
    :goto_9a
    return-void

    :cond_9b
    :goto_9b
    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return-void
.end method

.method createLayout(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 680
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p4, 0x10

    if-lt v0, p4, :cond_14

    .line 682
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0

    .line 684
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuringPre16(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method getAutoSizeMaxTextSize()I
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 410
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method getAutoSizeMinTextSize()I
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 394
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method getAutoSizeStepGranularity()I
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 378
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 423
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    return-object p0
.end method

.method getAutoSizeTextType()I
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 364
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    return p0
.end method

.method initTempTextPaint(I)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 667
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_c

    .line 668
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    goto :goto_f

    .line 670
    :cond_c
    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    .line 672
    :goto_f
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 673
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method isAutoSizeEnabled()Z
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 862
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_c

    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 9

    .line 115
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 118
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 121
    :cond_19
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/high16 v0, -0x40800000  # -1.0f

    if-eqz p2, :cond_2a

    .line 122
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_2b

    :cond_2a
    move p2, v0

    .line 126
    :goto_2b
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 127
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_3b

    :cond_3a
    move v1, v0

    .line 131
    :goto_3b
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 132
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto :goto_4b

    :cond_4a
    move v3, v0

    .line 136
    :goto_4b
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 137
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_69

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 141
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 142
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    .line 143
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    :cond_69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 149
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_a9

    .line 153
    iget-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-nez p1, :cond_a3

    .line 154
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    cmpl-float v2, v1, v0

    const/4 v4, 0x2

    if-nez v2, :cond_90

    const/high16 v1, 0x41400000  # 12.0f

    .line 158
    invoke-static {v4, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    :cond_90
    cmpl-float v2, v3, v0

    if-nez v2, :cond_9a

    const/high16 v2, 0x42e00000  # 112.0f

    .line 165
    invoke-static {v4, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :cond_9a
    cmpl-float p1, p2, v0

    if-nez p1, :cond_a0

    const/high16 p2, 0x3f800000  # 1.0f

    .line 176
    :cond_a0
    invoke-direct {p0, v1, v3, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 181
    :cond_a3
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    goto :goto_a9

    .line 184
    :cond_a7
    iput v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    :cond_a9
    :goto_a9
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 272
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 273
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    .line 275
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    .line 277
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 283
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    :cond_2b
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 8
    .param p1  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 315
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_57

    .line 317
    new-array v2, v0, [I

    if-nez p2, :cond_13

    .line 320
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_2f

    .line 322
    :cond_13
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    :goto_1d
    if-ge v1, v0, :cond_2f

    .line 326
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 331
    :cond_2f
    :goto_2f
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 332
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result p2

    if-eqz p2, :cond_3c

    goto :goto_59

    .line 333
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "None of the preset sizes is valid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_57
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 340
    :goto_59
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 341
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    :cond_62
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz p1, :cond_48

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 210
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000  # 12.0f

    const/4 v1, 0x2

    .line 212
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v2, 0x42e00000  # 112.0f

    .line 216
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x3f800000  # 1.0f

    .line 221
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 225
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 226
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    goto :goto_4b

    .line 230
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown auto-size text type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_48
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->clearAutoSizeConfiguration()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method setTextSizeInternal(IF)V
    .registers 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 597
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_d

    .line 598
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 600
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setRawTextSize(F)V

    return-void
.end method
