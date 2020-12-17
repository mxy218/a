.class Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;
.super Ljava/lang/Object;
.source "FlymeLocaleDisplayName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeLocaleDisplayName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleDisplayInfo"
.end annotation


# instance fields
.field code:Ljava/lang/String;

.field englishName:Ljava/lang/String;

.field flagRes:I

.field specialName:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/settings/language/FlymeLocaleDisplayName;


# direct methods
.method constructor <init>(Lcom/meizu/settings/language/FlymeLocaleDisplayName;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->this$0:Lcom/meizu/settings/language/FlymeLocaleDisplayName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/meizu/settings/language/FlymeLocaleDisplayName$LocaleDisplayInfo;->flagRes:I

    return-void
.end method
