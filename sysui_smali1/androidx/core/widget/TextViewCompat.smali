.class public final Landroidx/core/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewCompat$OreoCallback;,
        Landroidx/core/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# direct methods
.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .registers 2
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 768
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .registers 2
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 778
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .registers 5
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .line 907
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_b

    .line 909
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 912
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3e

    .line 913
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3e

    .line 919
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    .line 920
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    .line 923
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    .line 924
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    if-eq p0, v3, :cond_3b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_38

    goto :goto_3b

    .line 929
    :cond_38
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 927
    :cond_3b
    :goto_3b
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 935
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v3, :cond_45

    move v2, v3

    .line 938
    :cond_45
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result p0

    packed-switch p0, :pswitch_data_66

    if-eqz v2, :cond_63

    .line 941
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_65

    .line 954
    :pswitch_51  #0x7
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 952
    :pswitch_54  #0x6
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 950
    :pswitch_57  #0x5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 948
    :pswitch_5a  #0x4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 946
    :pswitch_5d  #0x3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 944
    :pswitch_60  #0x2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object p0

    .line 941
    :cond_63
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_65
    return-object p0

    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_60  #00000002
        :pswitch_5d  #00000003
        :pswitch_5a  #00000004
        :pswitch_57  #00000005
        :pswitch_54  #00000006
        :pswitch_51  #00000007
    .end packed-switch
.end method

.method public static getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;
    .registers 4
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 815
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_10

    .line 816
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    .line 818
    :cond_10
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    new-instance v1, Landroid/text/TextPaint;

    .line 819
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    .line 820
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_32

    .line 821
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    .line 822
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    .line 824
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3f

    .line 825
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    .line 827
    :cond_3f
    invoke-virtual {v0}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->build()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object p0

    return-object p0
.end method

.method public static setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 993
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    .line 995
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_16

    .line 996
    :cond_d
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v0, :cond_16

    .line 997
    check-cast p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1027
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    .line 1029
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_16

    .line 1030
    :cond_d
    instance-of v0, p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    if-eqz v0, :cond_16

    .line 1031
    check-cast p0, Landroidx/core/widget/TintableCompoundDrawablesView;

    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .registers 5
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 693
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 694
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 695
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    .line 699
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 701
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_25

    .line 704
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_25

    .line 707
    :cond_22
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_27

    .line 705
    :cond_25
    :goto_25
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 713
    :goto_27
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_3e

    neg-int v0, v0

    sub-int/2addr p1, v0

    .line 715
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    .line 716
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 715
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3e
    return-void
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .registers 5
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 738
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 740
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 742
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1b

    .line 745
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1b

    .line 748
    :cond_18
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_1d

    .line 746
    :cond_1b
    :goto_1b
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 754
    :goto_1d
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_33

    sub-int/2addr p1, v0

    .line 756
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 757
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 756
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_33
    return-void
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .registers 4
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 796
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 798
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_15

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    .line 802
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_15
    return-void
.end method

.method public static setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    .registers 4
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroidx/core/text/PrecomputedTextCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 884
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    .line 887
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat;->getPrecomputedText()Landroid/text/PrecomputedText;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 889
    :cond_e
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v0

    .line 890
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat;->getParams()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params;->equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 893
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    return-void

    .line 891
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given text can not be applied to TextView."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .registers 4
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 284
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_11

    .line 286
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_11
    return-void
.end method

.method public static wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 4
    .param p0  # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_15

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_15

    instance-of v0, p1, Landroidx/core/widget/TextViewCompat$OreoCallback;

    if-eqz v0, :cond_f

    goto :goto_15

    .line 529
    :cond_f
    new-instance v0, Landroidx/core/widget/TextViewCompat$OreoCallback;

    invoke-direct {v0, p1, p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    :cond_15
    :goto_15
    return-object p1
.end method
