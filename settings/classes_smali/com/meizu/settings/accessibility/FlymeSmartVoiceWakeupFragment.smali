.class public Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;
.super Landroid/app/Fragment;
.source "FlymeSmartVoiceWakeupFragment.java"


# instance fields
.field private mCustomCheckedTextView:Landroid/widget/CheckedTextView;

.field private mCustomCommandName:Landroid/widget/TextView;

.field private mDefaultCheckedTextView:Landroid/widget/CheckedTextView;

.field private mSmartVoiceSwitch:Lcom/meizu/common/widget/Switch;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private DoOnSwitchChanged()V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mSmartVoiceSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 170
    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->saveSwitch(Z)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoOnSwitchChanged | isChecked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MeizuSmartVoiceWakeupFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz v0, :cond_34

    const-string/jumbo v0, "voice_trigger=1"

    .line 177
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_3a

    :cond_34
    const-string/jumbo v0, "voice_trigger=0"

    .line 179
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;I)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->setCheckedView(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->startWaveWake()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->DoOnSwitchChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)Lcom/meizu/common/widget/Switch;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mSmartVoiceSwitch:Lcom/meizu/common/widget/Switch;

    return-object p0
.end method

.method private initCustomCommandView()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mCustomCommandName:Landroid/widget/TextView;

    const v1, 0x7f1205cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/FileOps;->calculate(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 193
    invoke-direct {p0, v1}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->setCheckedView(I)V

    goto :goto_3f

    .line 195
    :cond_17
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/FileOps;->getCurrentSelectedIndex(Landroid/content/Context;)I

    move-result v0

    .line 196
    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->setCheckedView(I)V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/meizu/settings/voicewakeup/FileOps;->populatePureKeywords(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3f

    .line 200
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mCustomCommandName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private initSmartVoiceSwitch(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a0693

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/Switch;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mSmartVoiceSwitch:Lcom/meizu/common/widget/Switch;

    .line 132
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mSmartVoiceSwitch:Lcom/meizu/common/widget/Switch;

    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->isOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mSmartVoiceSwitch:Lcom/meizu/common/widget/Switch;

    new-instance v1, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$4;-><init>(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0694

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$5;-><init>(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a01ef

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mDefaultCheckedTextView:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a01c9

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mCustomCheckedTextView:Landroid/widget/CheckedTextView;

    const v0, 0x7f0a01f0

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$1;-><init>(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ca

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$2;-><init>(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mCustomCheckedTextView:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment$3;-><init>(Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01cb

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mCustomCommandName:Landroid/widget/TextView;

    return-void
.end method

.method private isOn()Z
    .registers 3

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "sensory_sp_name"

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v1, "sensory_switch_key"

    .line 154
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private saveSwitch(Z)V
    .registers 4

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string/jumbo v0, "sensory_sp_name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 161
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "sensory_switch_key"

    .line 162
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setCheckedView(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_f

    .line 208
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mDefaultCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 209
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mCustomCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1b

    :cond_f
    if-ne p1, v1, :cond_1b

    .line 211
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mDefaultCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 212
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->mCustomCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private startWaveWake()V
    .registers 4

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/meizu/settings/voicewakeup/WaveWakeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 69
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d0223

    const/4 p3, 0x0

    .line 75
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .registers 1

    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->initCustomCommandView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 80
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a061a

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 83
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->initSmartVoiceSwitch(Landroid/view/View;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;->initView(Landroid/view/View;)V

    return-void
.end method
