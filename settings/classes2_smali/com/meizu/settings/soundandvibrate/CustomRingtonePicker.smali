.class public Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.super Lcom/meizu/settings/SettingsListFragment;
.source "CustomRingtonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$stopLocalMusicThread;,
        Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;,
        Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;,
        Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;,
        Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;
    }
.end annotation


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field private mApplyRingtone:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mBroacastReceiver:Landroid/content/BroadcastReceiver;

.field private mClickUri:Landroid/net/Uri;

.field private mComparator:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;

.field private mCurrentPlayRingtone:Lcom/meizu/settings/utils/RingtoneExt;

.field private mCustomAdapter:Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;

.field private mExistingUri:Landroid/net/Uri;

.field private mFragmentViewVisiable:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mIsAudioFocusRequested:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoader:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;

.field private mLoadingLayout:Landroid/view/View;

.field private mNoFileTipsContainer:Landroid/view/View;

.field private mPreviousUri:Landroid/net/Uri;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mRingtoneType:I

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mStopMusicRunnable:Ljava/lang/Runnable;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mSuppress:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcom/meizu/settings/SettingsListFragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 63
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mApplyRingtone:Z

    .line 79
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mFragmentViewVisiable:Z

    .line 81
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mNoFileTipsContainer:Landroid/view/View;

    .line 82
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mListView:Landroid/widget/ListView;

    .line 83
    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoadingLayout:Landroid/view/View;

    .line 104
    new-instance v0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mBroacastReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$2;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 136
    iput-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mSuppress:Z

    .line 366
    new-instance v0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$3;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStopMusicRunnable:Ljava/lang/Runnable;

    .line 373
    new-instance v0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$4;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Ljava/util/ArrayList;
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->getData()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;Ljava/util/List;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->updateView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)[Landroid/os/storage/StorageVolume;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Ljava/lang/Runnable;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRefreshRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/os/Handler;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->startGetData()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/widget/AlphabetIndexer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mIndexer:Landroid/widget/AlphabetIndexer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Lcom/meizu/settings/utils/RingtoneExt;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCurrentPlayRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/media/RingtoneManager;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object p0
.end method

.method private getAlphabetIndexer(Ljava/util/List;)Lcom/meizu/common/widget/GroupAlphabetIndexer;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
            ">;)",
            "Lcom/meizu/common/widget/GroupAlphabetIndexer;"
        }
    .end annotation

    .line 271
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "title_alphabet"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;

    .line 276
    iget-object v1, v1, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->displayNameToPinyin:Ljava/lang/String;

    .line 277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "#"

    const/4 v5, 0x1

    if-eqz v3, :cond_29

    move-object v1, v4

    goto :goto_2d

    :cond_29
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 278
    :goto_2d
    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isNonalphabetic(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    move-object v1, v4

    :cond_34
    new-array v3, v5, [Ljava/lang/String;

    aput-object v1, v3, v2

    .line 281
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f

    .line 285
    :cond_3c
    new-instance p1, Lcom/meizu/common/widget/GroupAlphabetIndexer;

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mAlphabet:Ljava/lang/String;

    invoke-direct {p1, v0, v2, p0}, Lcom/meizu/common/widget/GroupAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    return-object p1
.end method

.method private getData()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 232
    :cond_8
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRingtoneType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/MzRingtoneManager;->getAllRingtoneInfos(Landroid/content/Context;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MzRingtoneManager$RingtoneInfo;

    .line 236
    new-instance v3, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;

    invoke-direct {v3, p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V

    .line 237
    iput-object v2, v3, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->info:Landroid/media/MzRingtoneManager$RingtoneInfo;

    .line 238
    invoke-static {}, Lcom/meizu/settings/utils/HanziToPinyin;->getInstance()Lcom/meizu/settings/utils/HanziToPinyin;

    move-result-object v4

    iget-object v2, v2, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    .line 239
    invoke-virtual {v4, v2}, Lcom/meizu/settings/utils/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->displayNameToPinyin:Ljava/lang/String;

    .line 240
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_40
    return-object v1
.end method

.method private sendPlayRingtoneMessage(I)V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startGetData()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoader:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 218
    :cond_8
    new-instance v0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoader:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;

    .line 219
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoader:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private stopGetData()V
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoader:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_8
    return-void
.end method

.method private updateView(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mFragmentViewVisiable:Z

    if-nez v0, :cond_5

    return-void

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoadingLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5b

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5b

    .line 251
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mComparator:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 253
    new-instance v2, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCustomAdapter:Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;

    .line 254
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCustomAdapter:Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;

    invoke-virtual {v2, v0, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->setHasHeader(IZ)V

    .line 255
    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mExistingUri:Landroid/net/Uri;

    if-eqz v2, :cond_33

    .line 256
    iget-object v3, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCustomAdapter:Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;

    invoke-virtual {v3, v2}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->setSelectedItemUriString(Landroid/net/Uri;)V

    .line 258
    :cond_33
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->getAlphabetIndexer(Ljava/util/List;)Lcom/meizu/common/widget/GroupAlphabetIndexer;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mIndexer:Landroid/widget/AlphabetIndexer;

    .line 259
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mIndexer:Landroid/widget/AlphabetIndexer;

    check-cast p1, Lcom/meizu/common/widget/GroupAlphabetIndexer;

    const-string v2, "#1234567890"

    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/GroupAlphabetIndexer;->setFirstGroupLetters(Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCustomAdapter:Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;

    iget-object v2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 261
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCustomAdapter:Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 263
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mNoFileTipsContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_67

    .line 265
    :cond_5b
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 266
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mNoFileTipsContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 139
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    .line 141
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 142
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 144
    new-instance p1, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {p0}, Landroid/app/ListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, -0x1

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRingtoneType:I

    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mExistingUri:Landroid/net/Uri;

    .line 153
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mExistingUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mPreviousUri:Landroid/net/Uri;

    const-string v0, "ringtone_args"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mApplyRingtone:Z

    .line 156
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120860

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mAlphabet:Ljava/lang/String;

    .line 157
    new-instance p1, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;

    invoke-direct {p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mComparator:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$MyComparator;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d00a0

    const/4 p3, 0x0

    .line 172
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 174
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_15

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_15
    return-object p0
.end method

.method public onDestroyView()V
    .registers 4

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mFragmentViewVisiable:Z

    .line 290
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mBroacastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1a

    .line 292
    iget-boolean v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mIsAudioFocusRequested:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 293
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 295
    :cond_18
    iput-object v2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    .line 297
    :cond_1a
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->stopGetData()V

    .line 298
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    .line 309
    iget-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mSuppress:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const p1, 0x7f0a072d

    .line 312
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    if-nez p1, :cond_11

    return-void

    .line 315
    :cond_11
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p3

    if-nez p3, :cond_1b

    const/4 p3, 0x1

    .line 316
    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 318
    :cond_1b
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mExistingUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mPreviousUri:Landroid/net/Uri;

    .line 319
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;

    .line 320
    iget-object p1, p1, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->info:Landroid/media/MzRingtoneManager$RingtoneInfo;

    iget-object p1, p1, Landroid/media/MzRingtoneManager$RingtoneInfo;->uri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mClickUri:Landroid/net/Uri;

    .line 321
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCustomAdapter:Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;

    iget-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mClickUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->setSelectedItemUriString(Landroid/net/Uri;)V

    .line 323
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 324
    iget-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mClickUri:Landroid/net/Uri;

    const-string p3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 328
    iget-boolean p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mApplyRingtone:Z

    if-eqz p1, :cond_55

    .line 329
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRingtoneType:I

    iget-object p3, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mClickUri:Landroid/net/Uri;

    invoke-static {p1, p2, p3}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_55
    const/16 p1, 0x12c

    .line 331
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->sendPlayRingtoneMessage(I)V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 359
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mSuppress:Z

    .line 361
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 362
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStopMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 363
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mStopMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 352
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 353
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mSuppress:Z

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 164
    iget v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRingtoneType:I

    invoke-static {v0}, Lcom/meizu/settings/utils/RingtoneExt;->getStreamTypeByRingtoneType(I)I

    move-result v0

    .line 165
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 166
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 303
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 304
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 13

    .line 182
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 183
    iput-boolean p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mFragmentViewVisiable:Z

    .line 184
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 186
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    .line 187
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mBroacastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const p2, 0x7f0a03aa

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mNoFileTipsContainer:Landroid/view/View;

    const p2, 0x7f0a03ca

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoadingLayout:Landroid/view/View;

    .line 192
    iget-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoadingLayout:Landroid/view/View;

    const v0, 0x7f0a0401

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120ccb

    .line 193
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x102000a

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mListView:Landroid/widget/ListView;

    .line 196
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 198
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mListView:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;

    if-eqz v0, :cond_7a

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;

    .line 200
    invoke-virtual {p1}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v6, 0x7f07010f

    const v7, 0x7f07010e

    const/4 v8, -0x1

    const v9, 0x7f070172

    invoke-virtual/range {v3 .. v9}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterParam(IIIIII)V

    .line 207
    :cond_7a
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mNoFileTipsContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 211
    invoke-direct {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->startGetData()V

    return-void
.end method

.method public run()V
    .registers 4

    .line 340
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCurrentPlayRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    if-nez v0, :cond_18

    .line 344
    new-instance v0, Lcom/meizu/settings/utils/RingtoneExt;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mRingtoneType:I

    invoke-direct {v0, v1, v2}, Lcom/meizu/settings/utils/RingtoneExt;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mCurrentPlayRingtone:Lcom/meizu/settings/utils/RingtoneExt;

    .line 346
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomRingtonePicker.run mClickUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mClickUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "564618"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;

    iget-object v1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->mClickUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$playLocalMusicThread;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;Landroid/net/Uri;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
