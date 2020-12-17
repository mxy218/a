.class Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;
.super Ljava/lang/Object;
.source "WaveWakeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/voicewakeup/WaveWakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaveTextWatcher"
.end annotation


# instance fields
.field private final MAX_TEXT_INPUT_LENGTH:I

.field private cou:I

.field private mButton:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/voicewakeup/WaveWakeActivity;Landroid/widget/EditText;Landroid/widget/Button;)V
    .registers 7

    .line 913
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->this$0:Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 908
    iput p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->MAX_TEXT_INPUT_LENGTH:I

    const/4 v0, 0x0

    .line 911
    iput v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->cou:I

    .line 914
    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 915
    iget-object p2, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    .line 916
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 918
    iput-object p3, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    const-string p1, "WaveTextWatcher"

    const-string v0, "afterTextChanged"

    .line 940
    invoke-static {p1, v0}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mButton:Landroid/widget/Button;

    if-nez v0, :cond_10

    goto :goto_35

    .line 945
    :cond_10
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 946
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 947
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_2d

    .line 950
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mButton:Landroid/widget/Button;

    const/high16 p1, 0x6c000000

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_35

    .line 952
    :cond_2d
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mButton:Landroid/widget/Button;

    const p1, -0x22b1b5

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_35
    :goto_35
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    const-string p0, "WaveTextWatcher"

    const-string p1, "beforeTextChanged"

    .line 924
    invoke-static {p0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    const-string p1, "WaveTextWatcher"

    const-string p2, "onTextChanged"

    .line 929
    invoke-static {p1, p2}, Lcom/meizu/settings/voicewakeup/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr p3, p4

    .line 930
    iput p3, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->cou:I

    .line 931
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 932
    invoke-virtual {p0, p1}, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->removeBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 933
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 934
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/WaveWakeActivity$WaveTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    return-void
.end method

.method public removeBlank(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    if-eqz p1, :cond_12

    const-string v0, "\t|\r|\n| "

    .line 959
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 960
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 961
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_12
    return-object p0
.end method
