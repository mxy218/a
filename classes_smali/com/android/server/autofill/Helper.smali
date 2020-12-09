.class public final Lcom/android/server/autofill/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/Helper$ViewNodeFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillHelper"

.field public static sDebug:Z

.field public static sFullScreenMode:Ljava/lang/Boolean;

.field public static sVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 60
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/assist/AssistStructure$ViewNode;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;Z)V"
        }
    .end annotation

    .line 227
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillType()I

    move-result v0

    if-eqz v0, :cond_f

    .line 228
    :cond_8
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_f
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v0

    .line 231
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_20

    .line 232
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v2

    .line 233
    invoke-static {v2, p1, p2}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 235
    :cond_20
    return-void
.end method

.method private static findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 7

    .line 151
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 152
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    .line 153
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_1b

    .line 154
    invoke-virtual {p0, v3}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 156
    :cond_1b
    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_40

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/assist/AssistStructure$ViewNode;

    .line 158
    invoke-interface {p1, p0}, Lcom/android/server/autofill/Helper$ViewNodeFilter;->matches(Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 159
    return-object p0

    .line 161
    :cond_2e
    move v1, v2

    :goto_2f
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3f

    .line 162
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 164
    :cond_3f
    goto :goto_1b

    .line 166
    :cond_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 3

    .line 144
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object p0

    return-object p0
.end method

.method static getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/assist/AssistStructure;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    .line 218
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 219
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 222
    :cond_1a
    return-object v0
.end method

.method static getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object p0

    .line 96
    const/4 v1, 0x0

    if-nez v0, :cond_d

    move v2, v1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 97
    :goto_11
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 98
    nop

    :goto_17
    if-ge v1, v2, :cond_2b

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 101
    :cond_2b
    return-object v3
.end method

.method static getNumericValue(Landroid/metrics/LogMaker;I)I
    .registers 2

    .line 202
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object p0

    .line 203
    instance-of p1, p0, Ljava/lang/Number;

    if-nez p1, :cond_a

    .line 204
    const/4 p0, 0x0

    return p0

    .line 206
    :cond_a
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$findViewNodeByAutofillId$0(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .registers 2

    .line 145
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$sanitizeUrlBar$1([Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .registers 2

    .line 181
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 5

    .line 126
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 126
    return-object p0
.end method

.method private static newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 5

    .line 107
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 108
    const/16 p0, 0x38c

    invoke-virtual {v0, p0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 109
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5b0

    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 110
    if-eqz p3, :cond_21

    .line 111
    const/16 p1, 0x586

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 113
    :cond_21
    return-object p0
.end method

.method public static newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 5

    .line 119
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 120
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 119
    return-object p0
.end method

.method public static paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V
    .registers 2

    .line 131
    if-nez p1, :cond_9

    .line 132
    const-string/jumbo p1, "null"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 134
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "_chars"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    :goto_15
    return-void
.end method

.method public static sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 4

    .line 180
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Helper$laLKWmsGqkFIaRXW5rR6_s66Vsw;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/-$$Lambda$Helper$laLKWmsGqkFIaRXW5rR6_s66Vsw;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object p0

    .line 183
    if-eqz p0, :cond_66

    .line 184
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "AutofillHelper"

    if-eqz v0, :cond_3a

    .line 186
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_38

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sanitizeUrlBar(): empty on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_38
    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_3a
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$ViewNode;->setWebDomain(Ljava/lang/String;)V

    .line 190
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_66

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sanitizeUrlBar(): id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", domain="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_66
    return-object p0
.end method

.method static toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[",
            "Landroid/view/autofill/AutofillId;"
        }
    .end annotation

    .line 76
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    .line 79
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 80
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    aput-object v2, v0, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 82
    :cond_1c
    return-object v0
.end method
