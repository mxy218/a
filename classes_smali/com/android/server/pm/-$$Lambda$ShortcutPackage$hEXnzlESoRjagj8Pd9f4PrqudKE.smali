.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->lambda$new$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p1

    return p1
.end method
