.class Landroidx/leanback/widget/SearchBar$9;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/SearchBar;->startRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/SearchBar;)V
    .registers 2

    .line 633
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 1

    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    return-void
.end method

.method public onError(I)V
    .registers 3

    packed-switch p1, :pswitch_data_5e

    .line 695
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer other error"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 692
    :pswitch_b  #0x9
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer insufficient permissions"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 689
    :pswitch_13  #0x8
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer busy"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 686
    :pswitch_1b  #0x7
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer no match"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 683
    :pswitch_23  #0x6
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer speech timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 680
    :pswitch_2b  #0x5
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer client error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 677
    :pswitch_33  #0x4
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer server error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 674
    :pswitch_3b  #0x3
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer audio error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 671
    :pswitch_43  #0x2
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer network error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 668
    :pswitch_4b  #0x1
    sget-object p1, Landroidx/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer network timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_52
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 700
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->playSearchFailure()V

    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4b  #00000001
        :pswitch_43  #00000002
        :pswitch_3b  #00000003
        :pswitch_33  #00000004
        :pswitch_2b  #00000005
        :pswitch_23  #00000006
        :pswitch_1b  #00000007
        :pswitch_13  #00000008
        :pswitch_b  #00000009
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "results_recognition"

    .line 722
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 728
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2c

    :cond_f
    const/4 v0, 0x0

    .line 734
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 739
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_24

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    .line 742
    :goto_25
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/SearchEditText;->updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 2

    .line 637
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {p1}, Landroidx/leanback/widget/SpeechOrbView;->showListening()V

    .line 638
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->playSearchOpen()V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "results_recognition"

    .line 707
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 711
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 712
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->submitQuery()V

    .line 716
    :cond_21
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 717
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->playSearchSuccess()V

    return-void
.end method

.method public onRmsChanged(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    const/high16 v0, 0x41200000  # 10.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 650
    :goto_b
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setSoundLevel(I)V

    return-void
.end method
