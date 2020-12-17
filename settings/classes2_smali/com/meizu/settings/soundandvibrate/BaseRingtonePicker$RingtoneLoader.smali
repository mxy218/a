.class Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;
.super Landroid/os/AsyncTask;
.source "BaseRingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingtoneLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/meizu/settings/widget/ChecktextPreference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$1;)V
    .registers 3

    .line 114
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;-><init>(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/ChecktextPreference;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$100(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    iget v1, v1, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getDefaultDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$002(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    iget-boolean v1, v0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHasDefaultItem:Z

    if-eqz v1, :cond_38

    .line 123
    new-instance v1, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$100(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/meizu/settings/widget/ChecktextPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "default"

    .line 124
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f1211da

    .line 125
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 126
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {v0, v1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$202(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Lcom/meizu/settings/widget/ChecktextPreference;)Lcom/meizu/settings/widget/ChecktextPreference;

    .line 129
    :cond_38
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    iget-boolean v1, v0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mHasSilentItem:Z

    if-eqz v1, :cond_5a

    .line 130
    new-instance v1, Lcom/meizu/settings/widget/ChecktextPreference;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$100(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/meizu/settings/widget/ChecktextPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "silent"

    .line 131
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v0, 0xa100139

    .line 132
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 133
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {v0, v1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$302(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Lcom/meizu/settings/widget/ChecktextPreference;)Lcom/meizu/settings/widget/ChecktextPreference;

    .line 138
    :cond_5a
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    iget v2, v2, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->mRingtoneType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/media/MzRingtoneManager;->getAllRingtoneInfos(Landroid/content/Context;IZZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$402(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 139
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$400(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MzRingtoneManager$RingtoneInfo;

    .line 140
    iget-object v2, v1, Landroid/media/MzRingtoneManager$RingtoneInfo;->uri:Landroid/net/Uri;

    if-nez v2, :cond_88

    goto :goto_77

    .line 144
    :cond_88
    new-instance v5, Lcom/meizu/settings/widget/ChecktextPreference;

    iget-object v6, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {v6}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$100(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/meizu/settings/widget/ChecktextPreference;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 146
    iget-object v2, v1, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {v6}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$000(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 147
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    const v6, 0x7f12069c

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    aput-object v1, v7, v3

    invoke-virtual {v2, v6, v7}, Landroid/preference/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_c0

    .line 149
    :cond_bb
    iget-object v1, v1, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    :goto_c0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_c4
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 114
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/ChecktextPreference;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$500(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {v0, p1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$602(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 162
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$600(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 163
    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {v1}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$700(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_17

    .line 165
    :cond_2d
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;->access$800(Lcom/meizu/settings/soundandvibrate/BaseRingtonePicker;)V

    :cond_32
    return-void
.end method
