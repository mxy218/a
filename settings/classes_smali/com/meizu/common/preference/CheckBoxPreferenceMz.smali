.class public Lcom/meizu/common/preference/CheckBoxPreferenceMz;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxPreferenceMz.java"


# static fields
.field private static sPerformClick:Ljava/lang/reflect/Method;

.field private static sRecycle:Ljava/lang/reflect/Field;


# instance fields
.field private mTextLayout:Landroid/view/View;

.field private mTextLayoutClickListener:Landroid/view/View$OnClickListener;

.field private mTextLayoutEnabled:Z

.field private mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mWidgetFrame:Landroid/view/View;

.field private mWidgetFrameEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 40
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 54
    sget p1, Lcom/meizu/common/R$layout;->mz_preference_checkbox:I

    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 56
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mzShouldRecycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 40
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 60
    sget p1, Lcom/meizu/common/R$layout;->mz_preference_checkbox:I

    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 62
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mzShouldRecycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/preference/CheckBoxPreferenceMz;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->performClick()V

    return-void
.end method

.method private mzShouldRecycle()V
    .registers 5

    .line 205
    :try_start_0
    sget-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-nez v0, :cond_25

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_16

    .line 207
    const-class v0, Landroid/preference/Preference;

    const-string v3, "mCanRecycleLayout"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    goto :goto_20

    .line 209
    :cond_16
    const-class v0, Landroid/preference/Preference;

    const-string v3, "mHasSpecifiedLayout"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    .line 211
    :goto_20
    sget-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 213
    :cond_25
    sget-object v0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sRecycle:Ljava/lang/reflect/Field;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    return-void
.end method

.method private performClick()V
    .registers 8

    const/4 v0, 0x0

    .line 179
    :try_start_1
    sget-object v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1d

    .line 180
    const-class v1, Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "performClick"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/preference/PreferenceScreen;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    .line 181
    sget-object v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 183
    :cond_1d
    sget-object v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->sPerformClick:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_26

    :catch_26
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .registers 5

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 161
    check-cast p1, Landroid/view/ViewGroup;

    .line 162
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1b

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1b
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 7

    .line 90
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    if-nez v0, :cond_12

    .line 93
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 96
    :cond_12
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    if-nez v0, :cond_21

    .line 97
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :cond_21
    const v0, 0x1020001

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 101
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_b9

    .line 102
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_b0

    .line 103
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 105
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_value_checked:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_58

    .line 106
    :cond_4a
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_value_not_checked:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_58
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 108
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, ","

    if-eqz v3, :cond_7b

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    :cond_7b
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_97

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    :cond_97
    iget-object v3, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v3, :cond_ad

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    :cond_ad
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    :cond_b0
    check-cast p1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_b9
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 67
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 69
    sget v0, Lcom/meizu/common/R$id;->mz_preference_text_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_15

    .line 71
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_15
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1e

    .line 74
    iget-object v1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1e
    const v0, 0x1020018

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    new-instance v1, Lcom/meizu/common/preference/CheckBoxPreferenceMz$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz$1;-><init>(Lcom/meizu/common/preference/CheckBoxPreferenceMz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setTextLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 171
    iget-object p0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz p0, :cond_9

    .line 172
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public setTextLayoutEnabled(Z)V
    .registers 3

    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    if-eq v0, p1, :cond_d

    .line 128
    iput-boolean p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 130
    iget-object v0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 131
    invoke-direct {p0, v0, p1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    :cond_d
    return-void
.end method

.method public setTextLayoutLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayoutLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 191
    iget-object p0, p0, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz p0, :cond_9

    .line 192
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_9
    return-void
.end method
