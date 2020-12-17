.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/view/View;

.field private mOkButton:Landroid/view/View;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 277
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 278
    :goto_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 279
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-object v0
.end method

.method private performClick(Landroid/view/View;)V
    .registers 2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private performNumberClick(I)V
    .registers 2

    packed-switch p1, :pswitch_data_40

    goto :goto_3f

    .line 159
    :pswitch_4  #0x9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 156
    :pswitch_a  #0x8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 153
    :pswitch_10  #0x7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 150
    :pswitch_16  #0x6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 147
    :pswitch_1c  #0x5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 144
    :pswitch_22  #0x4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 141
    :pswitch_28  #0x3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 138
    :pswitch_2e  #0x2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 135
    :pswitch_34  #0x1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_3f

    .line 132
    :pswitch_3a  #0x0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3a  #00000000
        :pswitch_34  #00000001
        :pswitch_2e  #00000002
        :pswitch_28  #00000003
        :pswitch_22  #00000004
        :pswitch_1c  #00000005
        :pswitch_16  #00000006
        :pswitch_10  #00000007
        :pswitch_a  #00000008
        :pswitch_4  #00000009
    .end packed-switch
.end method


# virtual methods
.method protected getPasswordText()[B
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method protected getPromptReasonStringRes(I)I
    .registers 2

    if-eqz p1, :cond_1d

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_17

    const/4 p0, 0x3

    if-eq p1, p0, :cond_14

    const/4 p0, 0x4

    if-eq p1, p0, :cond_11

    .line 121
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 117
    :cond_11
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_user_request:I

    return p0

    .line 115
    :cond_14
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_device_admin:I

    return p0

    .line 113
    :cond_17
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 111
    :cond_1a
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_restart_pin:I

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 266
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x104032a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 189
    sget v0, Lcom/android/systemui/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_48

    .line 191
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 203
    :cond_48
    sget v0, Lcom/android/systemui/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 227
    sget v0, Lcom/android/systemui/R$id;->key0:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    .line 228
    sget v0, Lcom/android/systemui/R$id;->key1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    .line 229
    sget v0, Lcom/android/systemui/R$id;->key2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    .line 230
    sget v0, Lcom/android/systemui/R$id;->key3:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    .line 231
    sget v0, Lcom/android/systemui/R$id;->key4:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    .line 232
    sget v0, Lcom/android/systemui/R$id;->key5:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    .line 233
    sget v0, Lcom/android/systemui/R$id;->key6:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    .line 234
    sget v0, Lcom/android/systemui/R$id;->key7:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    .line 235
    sget v0, Lcom/android/systemui/R$id;->key8:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    .line 236
    sget v0, Lcom/android/systemui/R$id;->key9:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 239
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 258
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_b

    .line 259
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 87
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 88
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    return v1

    :cond_d
    const/16 v0, 0x43

    if-ne p1, v0, :cond_17

    .line 91
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    return v1

    :cond_17
    const/4 v0, 0x7

    if-lt p1, v0, :cond_23

    const/16 v2, 0x10

    if-gt p1, v2, :cond_23

    sub-int/2addr p1, v0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    :cond_23
    const/16 v0, 0x90

    if-lt p1, v0, :cond_30

    const/16 v2, 0x99

    if-gt p1, v2, :cond_30

    sub-int/2addr p1, v0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    .line 104
    :cond_30
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 3

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onResume(I)V
    .registers 2

    .line 244
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_9

    .line 251
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected resetPasswordText(ZZ)V
    .registers 3

    .line 166
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    return-void
.end method

.method protected resetState()V
    .registers 2

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_19

    .line 71
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_19

    .line 72
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_19
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_19

    .line 80
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_19

    .line 81
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_19
    return-void
.end method
