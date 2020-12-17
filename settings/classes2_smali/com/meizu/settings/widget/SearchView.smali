.class public Lcom/meizu/settings/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;,
        Lcom/meizu/settings/widget/SearchView$VoiceListener;,
        Lcom/meizu/settings/widget/SearchView$OnVoiceInputListener;,
        Lcom/meizu/settings/widget/SearchView$OnCloseListener;,
        Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# instance fields
.field private mClearTextView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

.field private mOnCloseListener:Lcom/meizu/settings/widget/SearchView$OnCloseListener;

.field private mOnInputMethodStateChangeListener:Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;

.field private mOnQueryChangeListener:Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;

.field private mOnVoiceInputListener:Lcom/meizu/settings/widget/SearchView$OnVoiceInputListener;

.field private mSearchEdit:Landroid/widget/EditText;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mVoiceAssisantHit:Ljava/lang/String;

.field private final mVoiceListener:Lcom/meizu/settings/widget/SearchView$VoiceListener;

.field private mVoiceManager:Lcom/meizu/settings/search/FlymeVoiceSupportManager;

.field private mVoiceServiceBind:Z

.field private mVoiceView:Landroid/widget/ImageView;

.field private showVoiceIcon:Z

.field private voiceInput:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/meizu/settings/widget/SearchView$VoiceListener;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/SearchView$VoiceListener;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceListener:Lcom/meizu/settings/widget/SearchView$VoiceListener;

    .line 77
    new-instance v0, Lcom/meizu/settings/widget/SearchView$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/SearchView$1;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 103
    new-instance v0, Lcom/meizu/settings/widget/SearchView$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/SearchView$2;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mInputMethodListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 357
    new-instance v0, Lcom/meizu/settings/widget/SearchView$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/SearchView$4;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SearchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p2, Lcom/meizu/settings/widget/SearchView$VoiceListener;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$VoiceListener;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceListener:Lcom/meizu/settings/widget/SearchView$VoiceListener;

    .line 77
    new-instance p2, Lcom/meizu/settings/widget/SearchView$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$1;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 103
    new-instance p2, Lcom/meizu/settings/widget/SearchView$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$2;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mInputMethodListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 357
    new-instance p2, Lcom/meizu/settings/widget/SearchView$4;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$4;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mHandler:Landroid/os/Handler;

    .line 123
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SearchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p2, Lcom/meizu/settings/widget/SearchView$VoiceListener;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$VoiceListener;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceListener:Lcom/meizu/settings/widget/SearchView$VoiceListener;

    .line 77
    new-instance p2, Lcom/meizu/settings/widget/SearchView$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$1;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 103
    new-instance p2, Lcom/meizu/settings/widget/SearchView$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$2;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mInputMethodListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 357
    new-instance p2, Lcom/meizu/settings/widget/SearchView$4;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$4;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mHandler:Landroid/os/Handler;

    .line 128
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SearchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance p2, Lcom/meizu/settings/widget/SearchView$VoiceListener;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$VoiceListener;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceListener:Lcom/meizu/settings/widget/SearchView$VoiceListener;

    .line 77
    new-instance p2, Lcom/meizu/settings/widget/SearchView$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$1;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 103
    new-instance p2, Lcom/meizu/settings/widget/SearchView$2;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$2;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mInputMethodListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 357
    new-instance p2, Lcom/meizu/settings/widget/SearchView$4;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/SearchView$4;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    iput-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mHandler:Landroid/os/Handler;

    .line 133
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SearchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/SearchView;Ljava/lang/CharSequence;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/ImageView;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mClearTextView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/SearchView;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/ImageView;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/SearchView;)Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mOnInputMethodStateChangeListener:Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/SearchView;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/widget/SearchView;)Landroid/widget/EditText;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    const-string v0, "layout_inflater"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    const v2, 0x7f0d02ed

    .line 145
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0416

    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    .line 148
    iget-object v2, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/meizu/settings/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v2, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 150
    iget-object v1, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    iget-object v1, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 153
    iget-object v1, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    const v2, 0x7f121298

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    const v1, 0x7f0a0418

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/settings/widget/SearchView;->mClearTextView:Landroid/widget/ImageView;

    .line 155
    iget-object v1, p0, Lcom/meizu/settings/widget/SearchView;->mClearTextView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0422

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceView:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/meizu/settings/widget/SearchView;->voiceAssistantAvailabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    .line 160
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    if-eqz v0, :cond_6f

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_76

    .line 163
    :cond_6f
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_76
    const-string v0, "input_method"

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f12176c

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceAssisantHit:Ljava/lang/String;

    .line 169
    iget-object p1, p0, Lcom/meizu/settings/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mInputMethodListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 171
    new-instance p1, Lcom/meizu/settings/widget/SearchView$3;

    invoke-direct {p1, p0}, Lcom/meizu/settings/widget/SearchView$3;-><init>(Lcom/meizu/settings/widget/SearchView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .registers 2

    .line 258
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mOnQueryChangeListener:Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;

    if-eqz p0, :cond_b

    .line 259
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_b
    return-void
.end method

.method private voiceAssistantAvailabled()Z
    .registers 4

    .line 390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    .line 392
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.meizu.voiceassistant"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method


# virtual methods
.method public bindVoiceService()V
    .registers 2

    .line 205
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceServiceBind:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    if-eqz v0, :cond_10

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceManager:Lcom/meizu/settings/search/FlymeVoiceSupportManager;

    invoke-interface {v0}, Lcom/meizu/settings/search/FlymeVoiceSupportManager;->bindVoiceService()V

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceServiceBind:Z

    :cond_10
    return-void
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public hideSoftKeyboard()V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 339
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_14
    return-void
.end method

.method public initVoiceManager(Landroid/content/Context;)V
    .registers 3

    .line 184
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    if-nez v0, :cond_5

    return-void

    .line 189
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 188
    invoke-static {p1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->createBuilder(Landroid/content/Context;)Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    .line 189
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->setTargetPackageName(Ljava/lang/String;)Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;

    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceAssisantHit:Ljava/lang/String;

    .line 190
    invoke-virtual {p1, v0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->setHintText(Ljava/lang/String;)Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;

    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceListener:Lcom/meizu/settings/widget/SearchView$VoiceListener;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->setVoiceListener(Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;)Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;

    .line 193
    invoke-virtual {p1}, Lcom/meizu/settings/search/FlymeSingleTonFlymeVoiceSupportManager$SingleTonVoiceManagerBuilder;->build()Lcom/meizu/settings/search/FlymeVoiceSupportManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceManager:Lcom/meizu/settings/search/FlymeVoiceSupportManager;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_b

    .line 278
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->startVoiceInput()V

    .line 279
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->hideSoftKeyboard()V

    goto :goto_1d

    .line 280
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mClearTextView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_16

    .line 281
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 282
    :cond_16
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1d

    .line 283
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->stopVoiceInput()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 345
    iget-object p3, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    if-ne p1, p3, :cond_c

    const/4 p1, 0x3

    if-ne p2, p1, :cond_c

    .line 346
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->hideSoftKeyboard()V

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->voiceInput:Z

    if-eqz v0, :cond_c

    .line 330
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->stopVoiceInput()V

    goto :goto_20

    .line 331
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    if-ne p1, v0, :cond_20

    if-nez p2, :cond_20

    iget-boolean p1, p0, Lcom/meizu/settings/widget/SearchView;->voiceInput:Z

    if-nez p1, :cond_20

    const-string p1, "MzSearchView"

    const-string p2, "SearchEdit onFocusChange hideSoftKeyboard"

    .line 332
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->hideSoftKeyboard()V

    :cond_20
    :goto_20
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_c

    .line 288
    iget-boolean p1, p0, Lcom/meizu/settings/widget/SearchView;->voiceInput:Z

    if-eqz p1, :cond_c

    .line 289
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->stopVoiceInput()V

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onViewDestroy()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/settings/widget/SearchView;->mInputMethodListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mOnCloseListener:Lcom/meizu/settings/widget/SearchView$OnCloseListener;

    .line 117
    iput-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mOnQueryChangeListener:Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public releaseVoiceService()V
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    if-nez v0, :cond_5

    return-void

    .line 200
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->unbindVoiceService()V

    .line 201
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceManager:Lcom/meizu/settings/search/FlymeVoiceSupportManager;

    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceListener:Lcom/meizu/settings/widget/SearchView$VoiceListener;

    invoke-interface {v0, p0}, Lcom/meizu/settings/search/FlymeVoiceSupportManager;->unregisterVoiceListener(Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;)V

    return-void
.end method

.method public requestEditTextFocus()V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    .line 353
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    return-void
.end method

.method public setOnCloseListener(Lcom/meizu/settings/widget/SearchView$OnCloseListener;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView;->mOnCloseListener:Lcom/meizu/settings/widget/SearchView$OnCloseListener;

    return-void
.end method

.method public setOnInputMethodStateChangeListener(Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView;->mOnInputMethodStateChangeListener:Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView;->mOnQueryChangeListener:Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnVoiceInputListener(Lcom/meizu/settings/widget/SearchView$OnVoiceInputListener;)V
    .registers 2

    .line 400
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView;->mOnVoiceInputListener:Lcom/meizu/settings/widget/SearchView$OnVoiceInputListener;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .registers 3

    .line 250
    iget-object p2, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_10

    .line 252
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_10
    return-void
.end method

.method public setSearchEditHint(Ljava/lang/CharSequence;)V
    .registers 2

    .line 417
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowVoiceIcon(Z)V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    return-void
.end method

.method public startVoiceInput()V
    .registers 4

    .line 220
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    if-nez v0, :cond_5

    return-void

    .line 223
    :cond_5
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->voiceInput:Z

    if-nez v0, :cond_37

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->voiceInput:Z

    .line 225
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceManager:Lcom/meizu/settings/search/FlymeVoiceSupportManager;

    invoke-interface {v0}, Lcom/meizu/settings/search/FlymeVoiceSupportManager;->showVoiceWindow()V

    .line 227
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 229
    iget-object v1, p0, Lcom/meizu/settings/widget/SearchView;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 230
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mOnVoiceInputListener:Lcom/meizu/settings/widget/SearchView$OnVoiceInputListener;

    if-eqz p0, :cond_37

    .line 231
    invoke-interface {p0}, Lcom/meizu/settings/widget/SearchView$OnVoiceInputListener;->onVoiceInputStart()V

    :cond_37
    return-void
.end method

.method public stopVoiceInput()V
    .registers 2

    .line 237
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    if-nez v0, :cond_5

    return-void

    .line 240
    :cond_5
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->voiceInput:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceListener:Lcom/meizu/settings/widget/SearchView$VoiceListener;

    iget-boolean v0, v0, Lcom/meizu/settings/widget/SearchView$VoiceListener;->mBind:Z

    if-eqz v0, :cond_1e

    :cond_f
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->voiceInput:Z

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceManager:Lcom/meizu/settings/search/FlymeVoiceSupportManager;

    invoke-interface {v0}, Lcom/meizu/settings/search/FlymeVoiceSupportManager;->hideVoiceWindow()V

    .line 243
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView;->mOnVoiceInputListener:Lcom/meizu/settings/widget/SearchView$OnVoiceInputListener;

    if-eqz p0, :cond_1e

    .line 244
    invoke-interface {p0}, Lcom/meizu/settings/widget/SearchView$OnVoiceInputListener;->onVoiceInputStop()V

    :cond_1e
    return-void
.end method

.method public unbindVoiceService()V
    .registers 2

    .line 212
    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceServiceBind:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->showVoiceIcon:Z

    if-eqz v0, :cond_13

    .line 213
    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->stopVoiceInput()V

    .line 214
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceManager:Lcom/meizu/settings/search/FlymeVoiceSupportManager;

    invoke-interface {v0}, Lcom/meizu/settings/search/FlymeVoiceSupportManager;->unBindVoiceService()V

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SearchView;->mVoiceServiceBind:Z

    :cond_13
    return-void
.end method
