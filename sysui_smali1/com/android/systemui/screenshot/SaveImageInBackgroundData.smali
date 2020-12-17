.class Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field context:Landroid/content/Context;

.field public deleteIntent:Landroid/content/Intent;

.field errorMsgResId:I

.field finisher:Ljava/lang/Runnable;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field public launchIntent:Landroid/content/Intent;

.field path:Ljava/lang/String;

.field previewWidth:I

.field previewheight:I

.field public shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .registers 2

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    return-void
.end method

.method clearImage()V
    .registers 3

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 123
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 124
    iput v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 125
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->shareIntent:Landroid/content/Intent;

    .line 126
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->deleteIntent:Landroid/content/Intent;

    .line 127
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->launchIntent:Landroid/content/Intent;

    const-string v0, ""

    .line 128
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->path:Ljava/lang/String;

    return-void
.end method
