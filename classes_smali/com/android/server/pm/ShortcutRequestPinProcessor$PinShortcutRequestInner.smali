.class Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;
.super Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutRequestPinProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinShortcutRequestInner"
.end annotation


# instance fields
.field public final launcherPackage:Ljava/lang/String;

.field public final launcherUserId:I

.field public final preExisting:Z

.field public final shortcutForLauncher:Landroid/content/pm/ShortcutInfo;

.field public final shortcutOriginal:Landroid/content/pm/ShortcutInfo;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;IIZ)V
    .registers 10

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, p7, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILcom/android/server/pm/ShortcutRequestPinProcessor$1;)V

    .line 191
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutOriginal:Landroid/content/pm/ShortcutInfo;

    .line 192
    iput-object p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutForLauncher:Landroid/content/pm/ShortcutInfo;

    .line 193
    iput-object p5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherPackage:Ljava/lang/String;

    .line 194
    iput p6, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 195
    iput-boolean p8, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->preExisting:Z

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;IIZLcom/android/server/pm/ShortcutRequestPinProcessor$1;)V
    .registers 10

    .line 172
    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutForLauncher:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method protected tryAccept()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->directPinShortcut(Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;)Z

    move-result v0

    return v0
.end method
