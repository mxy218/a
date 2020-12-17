.class public Lcom/meizu/common/preference/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/SwitchPreference$Listener;
    }
.end annotation


# static fields
.field private static sOnPreferenceChanged:Ljava/lang/reflect/Method;

.field private static sRecycle:Ljava/lang/reflect/Field;


# instance fields
.field private final mListener:Lcom/meizu/common/preference/SwitchPreference$Listener;

.field mNeedHapticFeedback:Z

.field private mTitleSingle:Z

.field private mTitleTextView:Landroid/widget/TextView;

.field mUseAnim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 139
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_SwitchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/meizu/common/preference/SwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/preference/SwitchPreference$Listener;-><init>(Lcom/meizu/common/preference/SwitchPreference;Lcom/meizu/common/preference/SwitchPreference$1;)V

    iput-object v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mListener:Lcom/meizu/common/preference/SwitchPreference$Listener;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mNeedHapticFeedback:Z

    .line 51
    iput-boolean v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mTitleSingle:Z

    .line 113
    :try_start_13
    sget-object v2, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    const/16 v3, 0x13

    if-nez v2, :cond_48

    .line 114
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_2a

    .line 115
    const-class v2, Landroid/preference/Preference;

    const-string v4, "mRecycleEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    goto :goto_43

    .line 116
    :cond_2a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_39

    .line 117
    const-class v2, Landroid/preference/Preference;

    const-string v4, "mCanRecycleLayout"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    goto :goto_43

    .line 119
    :cond_39
    const-class v2, Landroid/preference/Preference;

    const-string v4, "mHasSpecifiedLayout"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    .line 121
    :goto_43
    sget-object v2, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    :cond_48
    sget-object v2, Lcom/meizu/common/preference/SwitchPreference;->sRecycle:Ljava/lang/reflect/Field;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v1

    :goto_50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :goto_5c
    sget-object p0, Lcom/meizu/common/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, p0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/preference/SwitchPreference;Ljava/lang/Object;)Z
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/common/preference/SwitchPreference;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/meizu/common/preference/SwitchPreference;->performPreferenceChanged()V

    return-void
.end method

.method private declared-synchronized performPreferenceChanged()V
    .registers 5

    monitor-enter p0

    .line 319
    :try_start_1
    sget-object v0, Lcom/meizu/common/preference/SwitchPreference;->sOnPreferenceChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 320
    const-class v0, Lcom/meizu/common/preference/SwitchPreference;

    const-string/jumbo v2, "onPreferenceChange"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/preference/SwitchPreference;->sOnPreferenceChanged:Ljava/lang/reflect/Method;

    .line 321
    sget-object v0, Lcom/meizu/common/preference/SwitchPreference;->sOnPreferenceChanged:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 323
    :cond_19
    sget-object v0, Lcom/meizu/common/preference/SwitchPreference;->sOnPreferenceChanged:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_24
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_24

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 327
    :catch_24
    :goto_24
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 8

    .line 153
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 155
    sget v0, Lcom/meizu/common/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 156
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_a5

    .line 157
    instance-of v1, v0, Lcom/meizu/common/widget/Switch;

    if-eqz v1, :cond_73

    .line 158
    move-object v2, v0

    check-cast v2, Lcom/meizu/common/widget/Switch;

    const/4 v3, 0x0

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x1020018

    .line 161
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 163
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v2, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    goto :goto_2e

    :cond_2c
    iget-object v4, v2, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    :goto_2e
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    :cond_31
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 166
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ","

    if-eqz v4, :cond_54

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    :cond_54
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_70
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_73
    if-eqz v1, :cond_9c

    .line 175
    check-cast v0, Lcom/meizu/common/widget/Switch;

    .line 176
    iget-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    if-eqz v1, :cond_87

    iget-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mNeedHapticFeedback:Z

    if-eqz v1, :cond_87

    .line 177
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(Z)V

    goto :goto_90

    .line 179
    :cond_87
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    :goto_90
    const/4 v1, 0x1

    .line 181
    iput-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    const/4 v1, 0x0

    .line 182
    iput-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mNeedHapticFeedback:Z

    .line 183
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mListener:Lcom/meizu/common/preference/SwitchPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_a5

    .line 185
    :cond_9c
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_a5
    :goto_a5
    const v0, 0x1020016

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mTitleTextView:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b9

    .line 191
    iget-boolean v1, p0, Lcom/meizu/common/preference/SwitchPreference;->mTitleSingle:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 194
    :cond_b9
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .registers 2

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/meizu/common/preference/SwitchPreference;->mNeedHapticFeedback:Z

    .line 200
    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .registers 3

    .line 210
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 211
    iput-boolean p2, p0, Lcom/meizu/common/preference/SwitchPreference;->mUseAnim:Z

    return-void
.end method

.method public setTitleSingleLine(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/meizu/common/preference/SwitchPreference;->mTitleSingle:Z

    .line 252
    iget-object p0, p0, Lcom/meizu/common/preference/SwitchPreference;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    .line 253
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_9
    return-void
.end method

.method syncSummaryView(Landroid/view/View;)V
    .registers 5

    const v0, 0x1020010

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 228
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    :cond_1b
    const/16 p0, 0x8

    if-nez v0, :cond_20

    move p0, v2

    .line 238
    :cond_20
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq p0, v0, :cond_29

    .line 239
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_29
    return-void
.end method
