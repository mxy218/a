.class Lcom/android/server/input/InputManagerService$14;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V
    .registers 3

    .line 2101
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$14;->val$result:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 6

    .line 2106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$14;->val$result:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    .line 2107
    iget-object p3, p0, Lcom/android/server/input/InputManagerService$14;->val$result:[Ljava/lang/String;

    const/4 v0, 0x1

    new-instance v1, Ljava/io/InputStreamReader;

    .line 2108
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2107
    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_1f

    .line 2110
    :catch_1c
    move-exception p1

    goto :goto_20

    .line 2109
    :catch_1e
    move-exception p1

    .line 2111
    :goto_1f
    nop

    .line 2112
    :goto_20
    return-void
.end method
